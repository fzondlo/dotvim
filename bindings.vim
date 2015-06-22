"Shift+tab unindents in insert mode
inoremap <S-Tab> <C-d>

"U to redo
nnoremap U <C-r>

" Ctrl+s saves file - mapped to Ctrl-D and converted via Iterm
map <C-Y> :w<cr>
"ctrl+s in insert mode exits insert mode and saves
imap <C-Y> <Esc>\|:w<cr>

"resizing vim splits made easy, these first two are because I can never
"remember when I hit "+" if I'm really hitting "=" and same with "-" and "_"
"just make it easy, and bind them to the same action
map <C-w>_ <C-w>-
map <C-w>= <C-w>+
"window \ now makes splits even sized
nnoremap <C-w>\ <C-w>=  

" simplify resizing splits
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-h>=\eh"
execute "set <M-l>=\el"
nnoremap <M-j> 2<C-w>-
nnoremap <M-k> 2<C-w>+
nnoremap <M-h> 5<C-w><
nnoremap <M-l> 5<C-w>>

"as you go through search reuslts, the results appear in the middle of the screen
nnoremap n nzz
nnoremap N Nzz

"F1 toggles paste mode
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

"> and < to indent / unindent instead of >> and <<
noremap > >>
noremap < <<

"F1 copies to global clipboard
map <F1> "*y
"F2 pastes from global clipboard
map <F2> "*p
imap <F2> <esc><F2>i

"F12 reloads vim config
nnoremap <F12> :source $MYVIMRC<cr>

"toggles folding functions
map <C-X> za

"switch to last used buffer
noremap <Leader>v :bp<CR>

"switch to the next buffer
noremap <Leader>b :bn<CR>


"better go to definition
map gd g*

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

" this was for testing purposes
"map 5 :source $MYVIMRC<cr>\|:call JavaDocComment()<CR>

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

  let my_snippet.="# @return ${".c.":void} \n"
  let my_snippet.="#"

  "bind it to $&x (a combination that is likely to be never used)
  "so that we can execute in insert mode and preserve indention
  inoremap <silent> $&x $&x<C-R>=UltiSnips#Anon(my_snippet, '$&x')<cr>

  "move the cursor up one and go into insert mode and execute binding
  execute "normal O$&x"

  "call an anonymous snippet
  "execute 'call 

  """""""""""""
  "old code for snipmate
  "
  "execute 'call write_snippets("dynamicsnippet", my_snippet)'

  "execute dynamic snippet
  "let do="Odynamicsnippet\<Tab>"
  "execute "normal " . do

  "reset snippets, removing dynamic snippet
  "execute call ReloadAllSnippets()
  "
  """""""""""""
  
  "echo argument_list
endfunction

nnoremap <S-Up> :normal <c-r>=Resize('+')<CR><CR>
nnoremap <S-Down> :normal <c-r>=Resize('-')<CR><CR>
nnoremap <S-Left> :normal <c-r>=Resize('<')<CR><CR>
nnoremap <S-Right> :normal <c-r>=Resize('>')<CR><CR>
function! Resize(dir)
  let this = winnr()
  if '+' == a:dir || '-' == a:dir
    execute "normal \<c-w>k"
    let up = winnr()
    if up != this
      execute "normal \<c-w>j"
      let x = 'bottom'
    else
      let x = 'top'
    endif
  elseif '>' == a:dir || '<' == a:dir
    execute "normal \<c-w>h"
    let left = winnr()
    if left != this
      execute "normal \<c-w>l"
      let x = 'right'
    else
      let x = 'left'
    endif
  endif
  if ('+' == a:dir && 'bottom' == x) || ('-' == a:dir && 'top' == x)
    return "5\<c-v>\<c-w>+"
  elseif ('-' == a:dir && 'bottom' == x) || ('+' == a:dir && 'top' == x)
    return "5\<c-v>\<c-w>-"
  elseif ('<' == a:dir && 'left' == x) || ('>' == a:dir && 'right' == x)
    return "5\<c-v>\<c-w><"
  elseif ('>' == a:dir && 'left' == x) || ('<' == a:dir && 'right' == x)
    return "5\<c-v>\<c-w>>"
  else
    echo "oops. check your ~/.vimrc"
    return ""
  endif
endfunction

