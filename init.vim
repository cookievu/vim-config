" Vim config by cookievu

call plug#begin('~/.vim/plugged')

" Some Git stuff
Plug 'tpope/vim-fugitive'

" Debug
Plug 'vim-vdebug/vdebug'

" Language support things
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'elzr/vim-json'
Plug 'StanAngeloff/php.vim'

" Language Server Protocol (LSP)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Comment
Plug 'heavenshell/vim-jsdoc'

" Dracula theme
Plug 'ajh17/Spacegray.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'
Plug 'nathanaelkane/vim-indent-guides'

" A simple, easy-to-use Vim alignment plugin
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'

" Autoformat
Plug 'Chiel92/vim-autoformat'
Plug 'rstacruz/sparkup'

" File finder
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Multiple select
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

" Auth close html tag
Plug 'alvan/vim-closetag'

" Auto close bracket
Plug 'jiangmiao/auto-pairs'

call plug#end()


" Global config
set termguicolors
syntax on
colorscheme spacegray

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
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

" Spacegray Color Scheme
" Underlined Search: Underline search text instead of using highlight color.
let g:spacegray_underline_search = 1
" Use Italics: Use italics when appropriate, e.g. for comments. 
let g:spacegray_use_italics = 1
" Use lower contrast: Use a low contrast variant of Spacegray. 
let g:spacegray_low_contrast = 1

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor'
let g:ctrlp_working_path_mode = '' " current dir

" Airline
let g:airline#extensions#tabline#enabled = 1

" nerdtree config
let NERDTreeShowHidden=1

" Keys Mapping
" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" Line working
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

inoremap <C-d> <esc>ddi

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Auto close vim when only one nerdtree window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Autoformat
noremap <F3> :Autoformat<CR>

" Floating Term
let s:float_term_border_win = 0
let s:float_term_win = 0
function! FloatTerm(...)
  " Configuration
  let height = float2nr((&lines - 2) * 0.6)
  let row = float2nr((&lines - height) / 2)
  let width = float2nr(&columns * 0.6)
  let col = float2nr((&columns - width) / 2)
  " Border Window
  let border_opts = {
        \ 'relative': 'editor',
        \ 'row': row - 1,
        \ 'col': col - 2,
        \ 'width': width + 4,
        \ 'height': height + 2,
        \ 'style': 'minimal'
        \ }
  " Terminal Window
  let opts = {
        \ 'relative': 'editor',
        \ 'row': row,
        \ 'col': col,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }
  let top = "╭" . repeat("─", width + 2) . "╮"
  let mid = "│" . repeat(" ", width + 2) . "│"
  let bot = "╰" . repeat("─", width + 2) . "╯"
  let lines = [top] + repeat([mid], height) + [bot]
  let bbuf = nvim_create_buf(v:false, v:true)
  call nvim_buf_set_lines(bbuf, 0, -1, v:true, lines)
  let s:float_term_border_win = nvim_open_win(bbuf, v:true, border_opts)
  let buf = nvim_create_buf(v:false, v:true)
  let s:float_term_win = nvim_open_win(buf, v:true, opts)
  " Styling
  call setwinvar(s:float_term_border_win, '&winhl', 'Normal:Normal')
  call setwinvar(s:float_term_win, '&winhl', 'Normal:Normal')
  if a:0 == 0
    terminal
  else
    call termopen(a:1)
  endif
  startinsert
  autocmd TermClose * ++once :bd! | call nvim_win_close(s:float_term_border_win, v:true)
endfunction

" Leader key
let mapleader=","

" Open terminal
nnoremap <Leader>at :call FloatTerm()<CR>
" Open node REPL
nnoremap <Leader>an :call FloatTerm('"node"')<CR>
" Open tig, yes TIG, A FLOATING TIGGGG!!!!!!
nnoremap <Leader>ag :call FloatTerm('"tig"')<CR>

" coc.vim
" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
" Go to Define
noremap <Leader>tdf :call CocActionAsync('jumpDefinition')<CR>
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Buffer
nnoremap <Leader>b :ls<CR>:b<Space>
nmap bn :bNext <cr>
nmap bp :bprevious <cr>
nmap bw :bw <cr>

" Nerdtree
nnoremap <Leader>n :NERDTree<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" Duplicate everything selected
vmap D y'>p

" Comment
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Intent Guides
let g:indent_guides_enable_on_vim_startup = 0

" Airline
let g:airline#extensions#tabline#enabled = 1

" Color Highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

" JS-DOc
nmap <silent> <C-/> <Plug>(jsdoc)

" Vim Closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.blade.php'
