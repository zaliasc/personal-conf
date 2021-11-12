call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" base settings {{{
syntax on
set showcmd
set encoding=utf-8
set t_Co=256
set tabstop=2
set expandtab
set autoindent
set nu
" set cuc
set cursorline
set textwidth=80
set wrap
set linebreak
set ruler
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set undofile
set noerrorbells
set history=2000
set autoread
set nolist
set autochdir
set wildmenu
set wildmode=longest:list,full
set paste
set laststatus=2
set ruler
filetype plugin indent on
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set tags=tags
set autochdir
" }}}

let mapleader = "\<space>"

" ack.vim {{{
cnoreabbrev Ack Ack!
nnoremap <Leader>f :Ack!<Space>

if executable('ag')
  let g:ackprg = 'ag --vimgrep --nogroup --column'
endif

" 高亮搜索关键词
let g:ackhighlight = 1
" }}}

 " neardtree {{{
"map <C-b>w :NERDTreeMirror<CR>
map <leader>w :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1
let NERDTreeChDirMode = 2

"let g:NERDTreeDirArrowCollapsible = '▾'
"let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
"let g:NERDTreeShowLineNumbers=1  " 是否显示行号
"let g:NERDTreeHidden=0     "不显示隐藏文件
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" }}}


