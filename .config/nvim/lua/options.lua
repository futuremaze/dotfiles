-- lang
-- vim.cmd('language en_US.utf8') -- 表示言語を英語にする(Linux)
-- vim.cmd('language en_US') -- 表示言語を英語にする(Mac)

-- シェル
if vim.fn.has("win32") or vim.fn.has("win64") then
    vim.opt.shell = "bash"
end

-- ファイル
vim.opt.fileencoding = "utf-8" -- エンコーディングをUTF-8に設定
vim.opt.swapfile = false -- スワップファイルを作成しない
-- vim.opt.helplang = "ja" -- ヘルプファイルの言語は日本語
vim.opt.hidden = true -- バッファを切り替えるときにファイルを保存しなくてもOKにする

-- カーソルと表示
-- vim.opt.cursorline = true -- カーソルがある行を強調
-- vim.opt.cursorcolumn = true -- カーソルがある列を強調

-- クリップボード共有
vim.opt.clipboard:append({ "unnamedplus" }) -- レジスタとクリップボードを共有

-- メニューとコマンド
vim.opt.wildmenu = true -- コマンドラインで補完
vim.opt.cmdheight = 1 -- コマンドラインの表示行数
vim.opt.laststatus = 2 -- 下部にステータスラインを表示
vim.opt.showcmd = true -- コマンドラインに入力されたコマンドを表示

-- 検索・置換
vim.opt.hlsearch = true -- ハイライト検索を有効
vim.opt.incsearch = true -- インクリメンタルサーチを有効
vim.opt.matchtime = 1 -- 入力された文字列がマッチするまでにかかる時間

-- カラースキーム
-- vim.opt.termguicolors = true -- 24 ビットカラーを使用
-- vim.opt.background = "dark" -- ダークカラーを使用する

-- インデント
vim.opt.shiftwidth = 4 -- シフト幅を4に設定する
vim.opt.tabstop = 4 -- タブ幅を4に設定する
vim.opt.expandtab = true -- タブ文字をスペースに置き換える
vim.opt.autoindent = true -- 自動インデントを有効にする
vim.opt.smartindent = true -- スマートインデントを有効にする

-- 表示
vim.opt.number = true -- 行番号を表示
vim.opt.relativenumber = true -- 相対行番号を表示
vim.opt.wrap = true -- テキストの自動折り返しを有効に
vim.opt.showtabline = 2 -- タブラインを表示
                        -- (1:常に表示、2:タブが開かれたときに表示)
vim.opt.visualbell = true -- ヒープ音を表示する代わりに画面をフラッシュ
vim.opt.showmatch = true -- 対応する括弧をハイライト表示
vim.opt.splitright = true -- 分割ウィンドウを右に開く
vim.opt.splitbelow = true -- 分割ウィンドウを下に開く

-- 補完
vim.opt.completeopt = {
    "menuone",
    "noinsert",
}

-- インタフェース
vim.opt.winblend = 0 -- ウィンドウの不透明度
vim.opt.pumblend = 0 -- ポップアップメニューの不透明度
vim.opt.signcolumn = "yes" -- サインカラムを表示

---- 行番号の色を変更
vim.cmd("highlight LineNr guifg=#8a70ac")

-- カーソルの形状
-- vim.o.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

-- コマンド入力確定までの時間
vim.opt.timeoutlen = 300

---------- vim-airline ----------
-- タブラインを表示する
vim.g["airline#extensions#tabline#enabled"] = 1
-- ステータスラインに表示する項目を変更する
vim.g["airline#extensions#defaut#layout"] = {
    {'a', 'b', 'c'},
    {'z'}
}
vim.g["airline_section_c"] = "%t %M"
-- vim.g["airline_section_z"] =
-- 変更がなければdiffの行数を表示しない
vim.g["airline#extensions#hunks#non_zero_only"] = 1
-- タブラインの表示を変更する
vim.g["airline#extensions#tabline#fnamemod"] = ":t"
vim.g["airline#extensions#tabline#show_buffers"] = 1
vim.g["airline#extensions#tabline#show_splits"] = 0
vim.g["airline#extensions#tabline#show_tabs"] = 1
vim.g["airline#extensions#tabline#show_tab_nr"] = 0
vim.g["airline#extensions#tabline#show_tab_type"] = 1
vim.g["airline#extensions#tabline#show_close_button"] = 0

---------- vim-gitgutter ----------
-- 反映時間を短くする（デフォルト4000ms）
-- vim.opt.updatetime=250
