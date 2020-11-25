""""""""""""""""""""""""""""""""""""
"         custom bindings          "
""""""""""""""""""""""""""""""""""""
" Here you find core editor bindings that I couldn't put
" into any other files.

nnoremap <C-s>      :Lines<cr>

" Use C-g as an alias for escape - Doesn't work for insert mode
cnoremap <C-g> <Esc>
nnoremap <C-g> <Esc>
vnoremap <C-g> <Esc>gV
onoremap <C-g> <Esc>
cnoremap <C-g> <C-C><Esc>
" inoremap <C-g> <Esc>`^
let g:which_key_exit = [26, 7]

" Some nostalgic emacs~isms
inoremap <C-a>  <C-o>0
inoremap <C-e>  <C-o>$
cnoremap <C-a>  <Home>
cnoremap <C-e>  <End>
imap     <C-y>  <C-o>p

" Make $ not include eol
nnoremap Y  y$
nnoremap $  g_
nnoremap g_ $
vnoremap $  g_
vnoremap g_ $

" Make s surround, not substitue
vmap s S

" Cycle tabs with M-n and M-p
nnoremap <M-n> :tabn<cr>
nnoremap <M-p> :tabp<cr>
