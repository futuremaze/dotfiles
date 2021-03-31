#!/bin/bash
#
# Requires Pre-Installation
# - https://github.com/peco/peco/releases/download/v0.5.8/peco_linux_amd64.tar.gz
# - https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm
#

PROFILE=''
if [ $1 ]; then
    PROFILE="--profile $1"
fi

INVENTORY=$(aws ssm get-inventory \
    --filters "Key=AWS:InstanceInformation.InstanceStatus,Values=Terminated,Type=NotEqual" \
    --output json | \
    jq -r '.Entities[].Id' )

ID=`aws ec2 describe-instances \
    --instance-ids $INVENTORY $PROFILE | \
    jq -r '.[][].Instances[]
        | [.InstanceId,
        [.Tags[] | select(.Key == "Name").Value][],.Placement.AvailabilityZone]
        | @tsv' | \
    column -t | \
    peco | perl -pe 's/\s.*//'`

aws ssm start-session --target $ID $PROFILE
