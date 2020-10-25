set encoding=utf-8

syntax on

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif



" Plugins config
exe 'source ~/.config/nvim/plugin.vim'

" General config
exe 'source ~/.config/nvim/general.vim'

" Load all utils configuration files
for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
   exe 'source' f
endfor

" Keymaping
exe 'source ~/.config/nvim/keymap.vim'


