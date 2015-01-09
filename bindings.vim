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
"ctrl+s in insert mode exits insert mode and saves
imap <C-d> <Esc>\|:w<cr>

"resizing vim splits made easy, these first two are because I can never
"remember when I hit "+" if I'm really hitting "=" and same with "-" and "_"
"just make it easy, and bind them to the same action
map <C-w>_ <C-w>-
map <C-w>= <C-w>+
"window \ now makes splits even sized
nnoremap <C-w>\ <C-w>=  

"as you go through search reuslts, the results appear in the middle of the screen
nnoremap n nzz
nnoremap N Nzz

"F1 toggles paste mode
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

"F1 copies to global clipboard
map <F1> "*y
"F2 pastes from global clipboard
map <F2> "*p
imap <F2> <esc><F2>i

"F12 reloads vim config
nnoremap <F12> :source $MYVIMRC<cr>

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


"#####################
" 
" Creates JavaDoc Comments using snipmate
"
map # :call JavaDocComment()<CR>

function! JavaDocComment()
  "get the current line
  let current_line=getline('.')
  "match the arguments
  let arguments=matchstr( current_line, '[(][^)]\+' )
  "remove the ( at the begining we matched in the regex
  let arguments=substitute(arguments, "(", "", "")
  "remove any spaces, we use g in the flags to match all
  let arguments=substitute(arguments, " ", "", "g")
  "split arguments into a list
  let argument_list=split(arguments, ",")

  let my_snippet= "##########\n"
  let my_snippet.="# \n"
  let my_snippet.="# ${1:Method Description}\n"
  let my_snippet.="# \n"

  let c = 2
  for i in argument_list
    let my_snippet.="# @param ${".c.":Type} $".i."\n"
    let c += 1 
  endfor
  if len(argument_list) > 0
    let my_snippet.="# \n"
  endif

  let my_snippet.="# @return ${".c.":Type} \n"
  let my_snippet.="#"

  "Making a dynamic snippet
  execute 'call MakeSnip(&ft, "dynamicsnippet", my_snippet)'

  "execute dynamic snippet
  let do="Odynamicsnippet\<Tab>"
  execute "normal " . do

  "reset snippets, removing dynamic snippet
  execute "call ResetAllSnippets()"
  
  "echo argument_list
endfunction
"
"#####################
