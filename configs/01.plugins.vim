" All plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" ==== Editing plugins ====

" " Autoformat
Plug 'ianks/vim-tsx'
Plug 'jiangmiao/auto-pairs'

" " Multiple select
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

" " Comment
Plug 'heavenshell/vim-jsdoc'

" " A simple, easy-to-use Vim alignment plugin
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'

" " ==== UI Plugins ====
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'haya14busa/incsearch.vim'
Plug 't9md/vim-choosewin'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

call plug#end()

