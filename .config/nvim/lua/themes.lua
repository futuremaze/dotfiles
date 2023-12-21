---------- vim-code-dark ----------
-- カラースキーマ
vim.cmd("colorscheme codedark")

---------- vim-gitgutter ----------
-- 記号の色を変更する
vim.cmd("highlight GitGutterAdd ctermfg=green")
vim.cmd("highlight GitGutterChange ctermfg=blue")
vim.cmd("highlight GitGutterDelete ctermfg=red")
