" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
" Disable syntastic from checking sass since it's sooo slow
let g:syntastic_mode_map = { 'passive_filetypes': ['sass', 'scss']  }

"Supertab and Ultisnips - better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"Disable sql completion
let g:loaded_sql_completion = 0

" delimitMate
let g:delimitMate_expand_space = 1 " Turns on/off the expansion of <Space>
"let g:delimitMate_expand_cr = 1    " Turns on/off the expansion of <CR>

" CtrlP
let g:ctrlp_map = ''  " This allows nerdtree to bind to <C-p>
let g:ctrlp_cmd = 'CtrlP'
nmap <leader>r :CtrlPClearCache<cr>:CtrlP<cr>
nmap <leader>b :CtrlPBuff<cr>
"nmap <leader>l :CtrlPLine<cr>
"nmap <leader>m :CtrlPBufTag<cr>
"nmap <leader>M :CtrlPBufTagAll<cr>
let g:ctrlp_match_window = 'min:4,max:50'
" this makes ctrl p indexing A LOT faster
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
" this makes ctrlp searching a lot faster
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch'  }

" nerdtree
" Ctrl-P to Display the file browser tree
let g:NERDTreeWinPos = "right" "always open on the right side
nmap <C-p> :NERDTreeToggle<CR>
" <leader>p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>
let g:nerdtree_tabs_open_on_gui_startup = 0 "turn nerdtree off by default
"Open file in split with S
let NERDTreeMapOpenSplit='s'
"Open file in vertical split with f
let NERDTreeMapOpenVSplit='f'
"nerdtree shows dotfiles
let NERDTreeShowHidden=1

" nerdcommenter
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" vim-indentobject
" add Markdown to the list of indentation based languages
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

" indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 5

" vim-airline
set laststatus=2
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
let g:Powerline_symbols = 'unicode'
let g:airline_powerline_fonts=1
"let g:airline_theme='light' " dark simple badwolf solarized solarized2
set noshowmode
" get rid of the buffer line up top
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ [ 'x', 'y', 'z', 'warning' ]
  \ ]

let g:airline#extensions#default#section_truncate_width = {
    \ 'a': 70,
    \ 'b': 120,
    \ 'x': 90,
    \ 'y': 100,
    \ 'z': 90,
    \ }

" vim-windowswap
nnoremap <leader>s :call WindowSwap#EasyWindowSwap()<CR>

" vim-easymotion
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>f <Plug>(easymotion-f)
map <Leader>t <Plug>(easymotion-t)
map <Leader>T <Plug>(easymotion-T)
map <Leader>F <Plug>(easymotion-F)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

"LustyJuggler
"map <leader>v :LustyJuggler<CR>
nnoremap <silent> <C-q> :TmuxNavigateLeft<cr>

