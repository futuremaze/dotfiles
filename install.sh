#!/bin/bash

set -eu

cd $(dirname $0)

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -sf $(pwd)/$f ~/$f
done
