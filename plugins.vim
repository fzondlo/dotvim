" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'


" delimitMate
let g:delimitMate_expand_space = 1 " Turns on/off the expansion of <Space>
"let g:delimitMate_expand_cr = 1    " Turns on/off the expansion of <CR>

" Command-t
let g:ctrlp_map = ''  " This allows nerdtree to bind to <C-p>
let g:ctrlp_cmd = 'CtrlP'
nmap <leader>r :CtrlPClearCache<cr>:CtrlP<cr>
nmap <leader>l :CtrlPLine<cr>
nmap <leader>b :CtrlPBuff<cr>
nmap <leader>m :CtrlPBufTag<cr>
nmap <leader>M :CtrlPBufTagAll<cr>
let g:ctrlp_match_window = 'min:4,max:50'

" nerdtree
" Ctrl-P to Display the file browser tree
nmap <C-p> :NERDTreeTabsToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>
let g:nerdtree_tabs_open_on_gui_startup = 0 "turn nerdtree off by default

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
let g:airline_powerline_fonts=1
"let g:airline_theme='light' " dark simple badwolf solarized solarized2
set noshowmode
let g:airline#extensions#tabline#enabled = 1 "displays all buffers when there's only one tab open

" vim-easymotion
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>f <Plug>(easymotion-f)
map <Leader>t <Plug>(easymotion-t)
map <Leader>T <Plug>(easymotion-T)
map <Leader>F <Plug>(easymotion-F)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" Not 100% sure what this does, but I don't have to press ESC twice to exit a prompt
set timeoutlen=1000 ttimeoutlen=0
let g:airline#extensions#hunks#enabled = 1
