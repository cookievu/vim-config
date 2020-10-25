" ============================================================================ "
" ===                             KEY MAPPINGS                             === "
" ============================================================================ "

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

" Duplicate everything selected
vmap D y'>p

nmap <silent> <leader>df <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)
nnoremap <silent> <leader>ds :<C-u>CocList -I -N --top symbols<CR>

" Coc
nmap <C-l> :Prettier<CR>

" === Search shorcuts === "
"   <leader>h - Find and replace
"   <leader>/ - Claer highlighted search terms while preserving history
map <leader>h :%s///<left><left>
nmap <silent> <leader>/ :nohlsearch<CR>


" Toggle between buffers
nmap <Leader>bn :bn<CR>
nmap <Leader>bp :bp<CR>
nmap <Leader>bd :bd<CR>

" JS-DOc
nmap <silent> <C-/> <Plug>(jsdoc)

" Open terminal
nnoremap <Leader>at :call FloatTerm()<CR>
nnoremap <Leader>ag :call FloatTerm('"tig"')<CR>