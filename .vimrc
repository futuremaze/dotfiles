" enable compatibility with Vim features
set nocompatible

" load plugins, set indent and syntax highlighting based on detected file type
filetype plugin indent on
syntax on

" indentation settings
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

" backspace settings
set backspace=indent,eol,start

" buffer settings
set hidden
set laststatus=2
set display=lastline

" show settings
set showmode
set showcmd

" search settings
set incsearch
set hlsearch

" redraw settings
set ttyfast
set lazyredraw

" window settings
set splitbelow
set splitright

" cursor and search settings
set cursorline
set wrapscan

" editing settings
set report=0
set synmaxcol=200

" show non-printable characters
set nolist
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:ƶ

" encoding settings
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

" file format settings
set fileformats=unix,dos,mac

" ruler and line number settings
set ruler
set number

" scrolling settings
set scrolloff=3

" modeline settings
set modeline
set modelines=10

" title settings
set title
set titleold="Terminal"
set titlestring=%F

" status line settings
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

" auto read setting
set autoread

" visual settings
set noerrorbells
set visualbell
set t_vb=

" clipboard settings
set clipboard+=unnamed,autoselect

" mouse settings
set mouse=a

" whichwrap settings
set whichwrap=b,s,h,l,<,>,[,]

" display double-width symbols properly
set ambiwidth=double

" highlight settings
highlight Pmenu ctermbg=233 ctermfg=241
highlight PmenuSel ctermbg=233 ctermfg=166
highlight Search ctermbg=166 ctermfg=233
highlight Visual ctermbg=166 ctermfg=233

" vimdiff color settings
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21

" Set mapleader to Space
let mapleader="\<Space>"

" Save file
nnoremap <Leader>w :w<CR>

" Quit without saving
nnoremap <Leader>qqq :q!<CR>

" Edit file
nnoremap <Leader>eee :e<CR>

" Save and quit
nnoremap <Leader>wq :wq<CR>

" Clear search highlighting
nnoremap <Leader>nn :noh<CR>

" Split window
nnoremap <Leader>s :<C-u>split<CR>

" Split window vertically
nnoremap <Leader>v :<C-u>vsplit<CR>

" Navigate tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <Leader>t :tabnew<CR>

" Move cursor without wrapping
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
nnoremap gj j
nnoremap gk k

" Yank to end of line
nnoremap Y y$

" Increment number under cursor
nnoremap + <C-a>

" Decrement number under cursor
nnoremap - <C-x>

" Clear search highlighting
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" Move between windows with Ctrl + hjkl
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

" Move line/word with Ctrl + ea, fb
nmap <C-e> $
nmap <C-a> 0
nmap <C-f> W
nmap <C-b> B
imap <C-e> <C-o>$
imap <C-a> <C-o>0
imap <C-f> <C-o>W
imap <C-b> <C-o>B

" Toggle between absolute and relative display of line numbers
map <Leader>n :set relativenumber!<CR>

" Search move including another line
command -nargs=1 MyLineSearch let @m=<q-args> | call search('^\s*'. @m)
command -nargs=1 MyLineBackSearch let @m=<q-args> | call search('^\s*'. @m, 'b')
nnoremap <Space>f :MyLineSearch<Space>
nnoremap <Space>F :MyLineBackSearch<Space>

