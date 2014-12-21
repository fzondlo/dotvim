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

" directory settings
call system('mkdir -vp ~/.backup/undo/ > /dev/null 2>&1')
