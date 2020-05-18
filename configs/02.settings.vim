" Global config
syntax on

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set cursorline!
set lazyredraw
syntime on

set synmaxcol=128
syntax sync minlines=256

set noshowcmd noruler

set background=dark
colorscheme gruvbox

set clipboard=unnamedplus

set nu

set autoread
set autowrite

set autoindent
set si "smart indent

" Disable all backup
set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

filetype plugin on
set omnifunc=syntaxcomplete#Complete

filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 2 spaces width
set shiftwidth=4

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" Allows you to save files you opened without write permissions via sudo
cmap w!! w !sudo tee %