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

" Ack
call dein#add('mileszs/ack.vim')

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

" Allows you to use <Tab> for all your insert completion needs (:help ins-completion).
call dein#add('ervandew/supertab')

" manipulate multiple rows of data at once and make hashes line up
call dein#add('junegunn/vim-easy-align')
"
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


" Ruby/Rails

" rails support
call dein#add('tpope/vim-rails')
" bundler integration (e.g. :Bopen)
call dein#add('tpope/vim-bundler')

" syntax support
call dein#add('vim-ruby/vim-ruby')
call dein#add('tsaleh/vim-tmux')
call dein#add('Puppet-Syntax-Highlighting')
call dein#add('JSON.vim')

" Elixir {{{
call dein#add('elixir-lang/vim-elixir', {'autoload':{'filetypes':['elixir']}})
" }}}

" Erlang {{{
call dein#add('jimenezrick/vimerl',      {'autoload':{'filetypes':['erlang']}})
call dein#add('vim-erlang/vim-dialyzer', {'autoload':{'filetypes':['erlang']}})
" }}}

call dein#add('Shougo/neocomplete.vim')

call dein#add('tpope/vim-haml')
call dein#add('kchmck/vim-coffee-script')
call dein#add('vitaly/vim-syntastic-coffee')
call dein#add('kana/vim-textobj-user')
call dein#add('nelstrom/vim-textobj-rubyblock')

" replacement for the repeat mapping (.) to support plugins
call dein#add('tpope/vim-repeat')

call dein#add('bruno-/vim-ruby-fold')
if dein#check_install()
  call dein#install()
endif
call dein#end()
