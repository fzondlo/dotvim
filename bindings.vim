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

map <C-w>_ <C-w>-
map <C-w>= <C-w>+
nnoremap <C-w>\ <C-w>=

"as you go through search reuslts, the results appear in the middle of the screen
nnoremap n nzz
nnoremap N Nzz

"#####################
"
" Mazimize current screen and then restore other screens with Ctrl+W Z
"
nnoremap <C-W>z :NERDTreeClose\|:call MaximizeToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction
"
"#####################
