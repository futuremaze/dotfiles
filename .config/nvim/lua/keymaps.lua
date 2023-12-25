-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "

-- キーバインド
local keymap = vim.keymap

-- ファイルを保存する
keymap.set('n', '<Leader>w', ':<C-u>w<CR>', {noremap = true})
-- ファイルを保存して閉じる
keymap.set('n', '<Leader>wq', ':<C-u>wq<CR>', {noremap = true})
-- ファイル保存せずに閉じる
keymap.set('n', '<Leader>qqq', ':<C-u>q!<CR>', {noremap = true})
-- ファイルを編集する
keymap.set('n', '<Leader>eee', ':<C-u>e<CR>', {noremap = true})

-- バッファ移動（次）
keymap.set('n', '<C-l>', ':<C-u>bnext<CR>', {noremap = true, silent = true})
-- バッファ移動（前）
keymap.set('n', '<C-h>', ':<C-u>bprevious<CR>', {noremap = true, silent = true})

-- ウィンドウを分割する（横）
keymap.set('n', '<Leader>s', ':<C-u>split<CR>', {noremap = true})
-- ウィンドウを分割する（縦）
keymap.set('n', '<Leader>v', ':<C-u>vsplit<CR>', {noremap = true})
-- 分割したウィンドウにカーソルを移動する（左）
keymap.set('n', '<Leader>h', '<C-w>h', {noremap = true})
-- 分割したウィンドウにカーソルを移動する（下）
keymap.set('n', '<Leader>j', '<C-w>j', {noremap = true})
-- 分割したウィンドウにカーソルを移動する（上）
keymap.set('n', '<Leader>k', '<C-w>k', {noremap = true})
-- 分割したウィンドウにカーソルを移動する（右）
keymap.set('n', '<Leader>l', '<C-w>l', {noremap = true})
-- 分割したウィンドウを移動する（左）
keymap.set('n', '<Leader>H', '<C-w>H', {noremap = true})
-- 分割したウィンドウを移動する（下）
keymap.set('n', '<Leader>J', '<C-w>J', {noremap = true})
-- 分割したウィンドウを移動する（上）
keymap.set('n', '<Leader>K', '<C-w>K', {noremap = true})
-- 分割したウィンドウを移動する（右）
keymap.set('n', '<Leader>L', '<C-w>L', {noremap = true})
-- 分割したウィンドウのサイズを変更する（右）
keymap.set('n', '<Leader>>', '<C-w>>', {noremap = true})
-- 分割したウィンドウのサイズを変更する（右10）
keymap.set('n', '<Leader>>>', '<C-w>10>', {noremap = true})
-- 分割したウィンドウのサイズを変更する（右40）
keymap.set('n', '<Leader>>>>', '<C-w>40>', {noremap = true})
-- 分割したウィンドウのサイズを変更する（右80）
keymap.set('n', '<Leader>>>>>', '<C-w>80>', {noremap = true})
-- 分割したウィンドウのサイズを変更する（左）
keymap.set('n', '<Leader><', '<C-w><', {noremap = true})
-- 分割したウィンドウのサイズを変更する（左10）
keymap.set('n', '<Leader><<', '<C-w>10<', {noremap = true})
-- 分割したウィンドウのサイズを変更する（左40）
keymap.set('n', '<Leader><<<', '<C-w>40<', {noremap = true})
-- 分割したウィンドウのサイズを変更する（左80）
keymap.set('n', '<Leader><<<<', '<C-w>80<', {noremap = true})
-- 分割したウィンドウのサイズを変更する（上）
keymap.set('n', '<Leader>+', '<C-w>+', {noremap = true})
-- 分割したウィンドウのサイズを変更する（上5）
keymap.set('n', '<Leader>++', '<C-w>5+', {noremap = true})
-- 分割したウィンドウのサイズを変更する（上10）
keymap.set('n', '<Leader>+++', '<C-w>10+', {noremap = true})
-- 分割したウィンドウのサイズを変更する（上20）
keymap.set('n', '<Leader>++++', '<C-w>20+', {noremap = true})
-- 分割したウィンドウのサイズを変更する（下）
keymap.set('n', '<Leader>-', '<C-w>-', {noremap = true})
-- 分割したウィンドウのサイズを変更する（下5）
keymap.set('n', '<Leader>--', '<C-w>5-', {noremap = true})
-- 分割したウィンドウのサイズを変更する（下10）
keymap.set('n', '<Leader>---', '<C-w>10-', {noremap = true})
-- 分割したウィンドウのサイズを変更する（下20）
keymap.set('n', '<Leader>----', '<C-w>20-', {noremap = true})

-- タブで開く
keymap.set('n', '<Leader>t', ':<C-u>tabnew<CR>', {noremap = true})
-- 次のタブ
keymap.set('n', '<Tab>', 'gt', {noremap = true})
-- 前のタブ
keymap.set('n', '<S-Tab>', 'gT', {noremap = true})

-- 表示行単位でカーソル移動（上）
keymap.set('n', 'k', 'gk', {noremap = true})
keymap.set('n', '<Up>', 'gk', {noremap = true})
-- 表示行単位でカーソル移動（下）
keymap.set('n', 'j', 'gj', {noremap = true})
keymap.set('n', '<Down>', 'gj', {noremap = true})
-- 通常行単位でカーソル移動（上）
keymap.set('n', 'gk', 'k', {noremap = true})
-- 通常行単位でカーソル移動（下）
keymap.set('n', 'gj', 'j', {noremap = true})
-- 表示行単位でカーソル移動（上）（入力中）
keymap.set('i', '<Up>', '<C-o>gk', {noremap = true})
-- 表示行単位でカーソル移動（下）（入力中）
keymap.set('i', '<Down>', '<C-o>gj', {noremap = true})

-- 行末へ移動
keymap.set('n', '<C-e>', '$')
-- 行頭へ移動
keymap.set('n', '<C-a>', '^')
-- 次の単語へ移動
keymap.set('n', '<C-f>', 'W')
-- 前の単語へ移動
keymap.set('n', '<C-b>', 'B')
-- 行末へ移動（入力中）
keymap.set('i', '<C-e>', '<C-o>$')
-- keymap.set('t', '<C-e>', '<C-\\><C-n>$a')
-- 行頭へ移動（入力中）
keymap.set('i', '<C-a>', '<C-o>^')
-- keymap.set('t', '<C-a>', '<C-\\><C-n>^i')
-- 次の単語へ移動（入力中）
keymap.set('i', '<C-f>', '<C-o>W')
-- keymap.set('t', '<C-f>', '<C-\\><C-n>Wi')
-- 前の単語へ移動（入力中）
keymap.set('i', '<C-b>', '<C-o>B')
-- keymap.set('t', '<C-b>', '<C-\\><C-n>Bi')
-- 1文字移動（右）（入力中）
keymap.set('i', '<C-l>', '<C-o>l')
-- keymap.set('t', '<C-l>', '<C-\\><C-n>li')
-- 1文字移動（左）（入力中）
keymap.set('i', '<C-h>', '<C-o>h')
-- keymap.set('t', '<C-h>', '<C-\\><C-n>hi')

-- 行をコピーする（改行コードを含まない）
keymap.set('n', 'Y', 'y$', {noremap = true})
-- ヤンクせずに削除する
keymap.set('n', '<Leader>x', '"_x', {noremap = true})
keymap.set('n', '<Leader>d', '"_d', {noremap = true})
keymap.set('n', '<Leader>D', '"_D', {noremap = true})

-- 数字をインクリメントする
keymap.set('n', '+', '<C-a>', {noremap = true})
-- 数字をデクリメントする
keymap.set('n', '-', '<C-x>', {noremap = true})

-- 検索ハイライトを消す
keymap.set('n', '<Leader>nn', ':<C-u>noh<CR>', {noremap = true})
keymap.set('n', '<Esc><Esc>', ':<C-u>noh<CR>', {noremap = true})

-- 補完確定時にENTERで改行しない
-- keymap.set('i', '<CR>', 'coc#pum#visible() ? "<C-y>" : "<CR>"', {noremap = true, silent = true, expr = true})
keymap.set('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', {noremap = true, silent = true, expr = true})
-- 補完時に<C-p>,<C-n>で自動挿入しない
-- keymap.set('i', '<C-p>', 'coc#pum#visible() ? "<Up>" : "<C-p>"', {noremap = true, silent = true, expr = true})
-- keymap.set('i', '<C-n>', 'coc#pum#visible() ? "<Down>" : "<C-n>"', {noremap = true, silent = true, expr = true})
keymap.set('i', '<C-n>', 'coc#pum#visible() ? coc#pum#next(1) : "<C-n>"', {noremap = true, silent = true, expr = true})
keymap.set('i', '<C-p>', 'coc#pum#visible() ? coc#pum#next(1) : "<C-p>"', {noremap = true, silent = true, expr = true})
keymap.set('i', '<C-h>', 'coc#pum#visible() ? coc#pum#cancel() : "<C-h>"', {noremap = true, silent = true, expr = true})
keymap.set('i', '<Esc>', 'coc#pum#visible() ? coc#pum#cancel() : "<Esc>"', {noremap = true, silent = true, expr = true})

-- ターミナルを表示（下分割）
keymap.set('n', '<Leader>sh', ':belowright new<CR>:resize 20<CR>:terminal<CR>', {noremap = true, silent = true})
-- ターミナルノーマルモードに切り替える
keymap.set('t', '<Esc>', '<C-\\><C-n>', {silent = true})
-- ターミナル中のウィンドウ移動（左）
keymap.set('t', '<C-w>h', '<CMD>wincmd h<CR>', {silent = true})
-- ターミナル中のウィンドウ移動（上）
keymap.set('t', '<C-w>j', '<CMD>wincmd j<CR>', {silent = true})
-- ターミナル中のウィンドウ移動（下）
keymap.set('t', '<C-w>k', '<CMD>wincmd k<CR>', {silent = true})
-- ターミナル中のウィンドウ移動（右）
keymap.set('t', '<C-w>l', '<CMD>wincmd l<CR>', {silent = true})

---------- Fern ----------
-- サイドにディレクトリツリーを表示
keymap.set('n', '<Leader>dir', ':<C-u>Fern . -reveal=% -drawer -toggle -width=40<CR>', {noremap = true, silent = true})

---------- vim-gitgutter ----------
-- 前の変更箇所へ移動する
keymap.set('n', 'g[', ':GitGutterPrevHunk<CR>', {noremap = true})
-- 次の変更箇所へ移動する
keymap.set('n', 'g]', ':GitGutterNextHunk<CR>', {noremap = true})
-- diffをハイライトする
keymap.set('n', 'gh', ':GitGutterLineHighlightsToggle<CR>', {noremap = true})
-- カーソル行のdiffを表示する
keymap.set('n', 'gp', ':GitGutterPreviewHunk<CR>', {noremap = true})

---------- telescope ----------
local builtin = require('telescope.builtin')
-- ファイル検索
vim.keymap.set("n", "<Leader>ff", builtin.find_files, {})
-- テキスト検索
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
-- gitの操作（git status）
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
-- gitの操作（git log）
vim.keymap.set("n", "<leader>gl", builtin.git_commits, {})
-- バッファの操作
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
-- 履歴の操作
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
-- nvim設定ファイルへのアクセス
vim.keymap.set("n", "<Leader>fn", ":Telescope find_files cwd=~/AppData/Local/nvim<CR>", {})
-- カラーテーマの一覧
vim.keymap.set("n", "<leader>fc", builtin.colorscheme, {})
-- vim_optionsの一覧
vim.keymap.set("n", "<leader>fv", builtin.vim_options, {})
-- keymapの一覧
vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
-- registerの一覧
vim.keymap.set("n", "<leader>fr", builtin.registers, {})
