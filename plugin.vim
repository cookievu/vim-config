" All plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}

" ==== Editing plugins ====
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jiangmiao/auto-pairs'

" " Multiple select
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'


" " A simple, easy-to-use Vim alignment plugin
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'

" " ==== UI Plugins ====
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'haya14busa/incsearch.vim'
Plug 't9md/vim-choosewin'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

call plug#end()

