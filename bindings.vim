"close current buffer (without closing vim)
nnoremap <leader>q :bp<cr>:bd #<cr>

",v toggles last buffer
nnoremap <leader>v <C-^>

"Shift+tab unindents in insert mode
inoremap <S-Tab> <C-d>

"U to redo
nnoremap U <C-r>

" Ctrl+s saves file - mapped to Ctrl-D and converted via Iterm
map <C-d> :w<cr>
