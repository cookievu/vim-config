" All plugins

call plug#begin('~/.vim/plugged')

" ==== Editing plugins ====

" Config
Plug 'editorconfig/editorconfig-vim'

" Language Server Protocol (LSP)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Some Git stuff (gitgutter)
Plug 'tpope/vim-fugitive'

" Autoformat
Plug 'Chiel92/vim-autoformat'
" Auto generate HTML tag
Plug 'rstacruz/sparkup'

" File finder
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" Multiple select
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

" Comment
Plug 'heavenshell/vim-jsdoc'
Plug 'scrooloose/nerdcommenter'

" Debug
Plug 'vim-vdebug/vdebug'

" A simple, easy-to-use Vim alignment plugin
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'

" ==== UI Plugins ====
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'nickaroot/vim-xcode-dark-theme'

call plug#end()

