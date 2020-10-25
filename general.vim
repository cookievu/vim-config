" General settings

filetype plugin indent on

set lazyredraw

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Auto remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

set encoding=UTF-8
set hidden
set nobackup
set nowritebackup
set mouse=a " enable mouse for all mode
set cursorline

set foldmethod=indent
set foldlevel=99

" Font & theme
set guifont=DroidSansMono\ Nerd\ Font:h11
set background=dark
colorscheme gruvbox

set noswapfile
set nojoinspaces
set nowrap
set number
set ttyfast
set laststatus=2
set ttimeout
set ttimeoutlen=10
set termguicolors
set ignorecase
" set relativenumber

set clipboard=unnamedplus

set omnifunc=syntaxcomplete#Complete

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set listchars=tab:>·,trail:~,extends:>,precedes:<
set list

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

set autoindent
set smartindent

" Leader key
let mapleader=","

" Choosewin
nmap  -  <Plug>(choosewin)
" if you want to use overlay feature
let g:choosewin_overlay_enable = 1

" Color highlight
let g:Hexokinase_highlighters = [ 'virtual' ]
let g:Hexokinase_virtualText = '▩'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Persistent undo
" Don't forget mkdir folder $HOME/.vim/undo
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=1000
set undoreload=10000

set updatetime=300

" Intent Guides
let g:indent_guides_enable_on_vim_startup = 0

" Lightline
set laststatus=2
set showtabline=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ }
      \ }

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

" Color Highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" Auto format when save
autocmd  BufWritePost :Prettier <afile>

nnoremap <leader>v <cmd>CHADopen<cr>

