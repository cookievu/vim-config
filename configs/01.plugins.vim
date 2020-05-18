" All plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" ==== Editing plugins ====

" " Autoformat
Plug 'ianks/vim-tsx'

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
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

