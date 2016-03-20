if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/fzondlo/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/fzondlo/.vim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#add('powerline/fonts')

call dein#add('tmhedberg/matchit')

" Vim + Tmux integrated split screen navigation
call dein#add('christoomey/vim-tmux-navigator')
" Get around easily
call dein#add("Lokaltog/vim-easymotion")
" file tree
call dein#add('scrooloose/nerdtree')
" file tree and tabs interaction
"NeoBundle 'jistr/vim-nerdtree-tabs'
" commenting
call dein#add('scrooloose/nerdcommenter')

" fuzzy file open
call dein#add('kien/ctrlp.vim')
" very fast matching with ctrlp
call dein#add('FelikZ/ctrlp-py-matcher')

" popup completion menu
"NeoBundle 'AutoComplPop'
" syntax checking on save
call dein#add('scrooloose/syntastic')
" manipulation of surraunding parens, quotes, etc.
call dein#add('tpope/vim-surround')
" better looking statusline
call dein#add('bling/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" plugin for visually displaying indent levels
call dein#add('Indent-Guides')
" end certain structures automatically, e.g. begin/end etc.)
call dein#add('tpope/vim-endwise')
" automatic closing of quotes, parenthesis, brackets, etc.
call dein#add('Raimondi/delimitMate')
" git diff in the gutter (sign column) and stages/reverts hunks
call dein#add('airblade/vim-gitgutter')
" git integration
call dein#add('tpope/vim-fugitive')
" TextMate-style snippets
"NeoBundle 'msanders/snipmate.vim'

call dein#add('ervandew/supertab')
" Track the engine.
call dein#add('SirVer/ultisnips')

" Snippets are separated from the engine. Add this if you want them:
"NeoBundle 'honza/vim-snippets'

" easy window swapping
call dein#add('wesQ3/vim-windowswap')

" LustyJuggler for a nice buffer line
"NeoBundle 'sjbach/lusty'

" analytics
call dein#add('wakatime/vim-wakatime')

"autocomplete
call dein#add('Valloric/YouCompleteMe')


" Shows buffers at bottom
" ---------------
" Problem with this library is that if you have more than 4 buffers it becomes
" pretty much useless
"NeoBundle 'vim-scripts/buftabs'

"TO EXPLORE LATER
"  " tags list navigation
"  NeoBundle 'taglist.vim'
"  " yank history
"  NeoBundle 'YankRing.vim'
"  " vertical alignment tool
"  NeoBundle 'tsaleh/vim-align'
"  " 'ag' searching integration
"  NeoBundle 'rking/ag.vim'
"  " text object based on indent level (ai, ii)
"  NeoBundle 'austintaylor/vim-indentobject'
"  " global search & replace
"  NeoBundle 'greplace.vim'
"  " plugin for resolving three-way merge conflicts
"  NeoBundle 'sjl/splice.vim'
"  " calendar, duh!
"  NeoBundle 'calendar.vim--Matsumoto'
"  " A Narrow Region Plugin (similar to Emacs)
"  NeoBundle 'chrisbra/NrrwRgn'
"  " url based hyperlinks for text files
"  NeoBundle 'utl.vim'
"  " A clone of Emacs' Org-mode for Vim
"  NeoBundle 'hsitz/VimOrganizer'
"  " visual undo tree
"  NeoBundle 'sjl/gundo.vim'
"  " switch segments of text with predefined replacements. e.g. '' -> ""
"  NeoBundle 'AndrewRadev/switch.vim'
"  " async external commands with output in vim
"  NeoBundle 'tpope/vim-dispatch'



" Ruby/Rails

" rails support
call dein#add('tpope/vim-rails')
" bundler integration (e.g. :Bopen)
call dein#add('tpope/vim-bundler')

"LATER
" " rake integration
" NeoBundle 'tpope/vim-rake'
" " A custom text object for selecting ruby blocks (ar/ir)
" NeoBundle 'nelstrom/vim-textobj-rubyblock'
" " ruby refactoring
" NeoBundle 'ecomba/vim-ruby-refactoring'
" " apidock.com docs integration
" NeoBundle 'apidock.vim'
" " toggle ruby blocks style
" NeoBundle 'vim-scripts/blockle.vim'
" " lightweight Rspec runner for Vim
" NeoBundle 'josemarluedke/vim-rspec'




" syntax support
call dein#add('vim-ruby/vim-ruby')
call dein#add('tsaleh/vim-tmux')
call dein#add('Puppet-Syntax-Highlighting')
call dein#add('JSON.vim')
"NeoBundle 'tpope/vim-cucumber'
call dein#add('tpope/vim-haml')
"NeoBundle 'haml'
"NeoBundle 'tpope/vim-markdown'
call dein#add('kchmck/vim-coffee-script')
call dein#add('vitaly/vim-syntastic-coffee')
"NeoBundle 'vim-scripts/jade.vim'
"NeoBundle 'wavded/vim-stylus'
"NeoBundle 'VimClojure'
"NeoBundle 'slim-template/vim-slim'
"NeoBundle 'elixir-lang/vim-elixir'
"NeoBundle 'Blackrush/vim-gocode'
"NeoBundle 'ekalinin/Dockerfile.vim'
"NeoBundle 'groenewege/vim-less'



"Possibly Interesting Stuff Here
"  " Support and minor
"  
"  " Support for user-defined text objects
"  NeoBundle 'kana/vim-textobj-user'
"  " replacement for the repeat mapping (.) to support plugins
"  NeoBundle 'tpope/vim-repeat'
"  " hide .gitignore-d files from vim
"  "NeoBundle 'vitaly/vim-gitignore'
"  " repeat motion with <Space>
"  "NeoBundle 'scrooloose/vim-space'
"  " Github's gist support
"  NeoBundle 'mattn/gist-vim'
"  " web APIs support
"  NeoBundle 'mattn/webapi-vim'
"  
"  "NeoBundle 'ShowMarks'
"  "NeoBundle 'tpope/vim-unimpaired'
"  "NeoBundle 'reinh/vim-makegreen'
"  
"  NeoBundle 'Shougo/vimproc'
"  NeoBundle 'Shougo/unite.vim'
"  NeoBundle 'Shougo/unite-outline'
"  "NeoBundle 'ujihisa/unite-colorscheme'

call dein#add('bruno-/vim-ruby-fold')
if dein#check_install()
  call dein#install()
endif
call dein#end()
