" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" presentation settings
set number              " precede each line with its line number
set textwidth=0         " Do not wrap words (insert)
set wrapmargin=0        " prevent Vim from automatically inserting line breaks in newly entered text
set wrap                " wrap lines
set linebreak           " The line will be broken at a word boundary. If this is turned off, the line may be broken in the middle of a word if necessary.
set showbreak=+++\      " wrapped lines are indented using "+++ "
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set visualbell          " use visual bell instead of beeping

set shell=/bin/bash     " use bash for shell commands

set autoindent          " automatically indent new line

set ts=2                " number of spaces in a tab
set sw=2                " number of spaces for indent
set sts=2
set expandtab           " expand tabs into spaces

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" directory settings
call system('mkdir -vp ~/.backup/undo/ > /dev/null 2>&1')

" omni completion settings
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

" directory settings
call system('mkdir -vp ~/.backup/undo/ > /dev/null 2>&1')
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file
"set nobackup            " do not write backup files
set backupskip+=~/tmp/*,/private/tmp/* " skip backups on OSX temp dir, for crontab -e to properly work
"set noswapfile          " do not write .swp files
set undofile
set undodir=~/.backup/undo/,~/tmp,.

" folding
set foldcolumn=0        " columns for folding
set foldmethod=indent
set foldlevel=9
set nofoldenable        "dont fold by default "

let mapleader = "\<BS>"
map <Space> <BS>

let maplocalleader = "\\"

"disable bell completely
set visualbell 
set t_vb=

set backspace=2 " make backspace work like most other apps"

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
