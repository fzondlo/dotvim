" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'

" Ack
Plug 'mileszs/ack.vim'

" Add or remove your plugins here:
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'powerline/fonts'

Plug 'tmhedberg/matchit'

" Vim + Tmux integrated split screen navigation
Plug 'christoomey/vim-tmux-navigator'
" Get around easily
Plug 'Lokaltog/vim-easymotion'
" file tree
Plug 'scrooloose/nerdtree'
" file tree and tabs interaction
"NeoBundle 'jistr/vim-nerdtree-tabs'
" commenting
Plug 'scrooloose/nerdcommenter'

" fuzzy file open
Plug 'kien/ctrlp.vim'
" very fast matching with ctrlp
Plug 'FelikZ/ctrlp-py-matcher'

" popup completion menu
"NeoBundle 'AutoComplPop'
" syntax checking on save
Plug 'scrooloose/syntastic'
" manipulation of surraunding parens, quotes, etc.
Plug 'tpope/vim-surround'
" better looking statusline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" plugin for visually displaying indent levels
Plug 'nathanaelkane/vim-indent-guides'
" end certain structures automatically, e.g. begin/end etc.)
Plug 'tpope/vim-endwise'
" automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'
" git diff in the gutter (sign column) and stages/reverts hunks
Plug 'airblade/vim-gitgutter'
" git integration
Plug 'tpope/vim-fugitive'
" TextMate-style snippets
"NeoBundle 'msanders/snipmate.vim'

" Allows you to use <Tab> for all your insert completion needs (:help ins-completion).
Plug 'ervandew/supertab'

" manipulate multiple rows of data at once and make hashes line up
Plug 'junegunn/vim-easy-align'
"
" Track the engine.
" Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"NeoBundle 'honza/vim-snippets'

" easy window swapping
Plug 'wesQ3/vim-windowswap'

" LustyJuggler for a nice buffer line
"NeoBundle 'sjbach/lusty'

" analytics
Plug 'wakatime/vim-wakatime'

"autocomplete
Plug 'Valloric/YouCompleteMe'


" Ruby/Rails

" rails support
Plug 'tpope/vim-rails'
" bundler integration (e.g. :Bopen)
Plug 'tpope/vim-bundler'

" syntax support
Plug 'vim-ruby/vim-ruby'
Plug 'tsaleh/vim-tmux'
Plug 'rodjek/vim-puppet'
Plug 'elzr/vim-json'

Plug 'Shougo/neocomplete.vim'

Plug 'tpope/vim-haml'
Plug 'kchmck/vim-coffee-script'
Plug 'vitaly/vim-syntastic-coffee'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" replacement for the repeat mapping (.) to support plugins
Plug 'tpope/vim-repeat'

Plug 'bruno-/vim-ruby-fold'

" Initialize plugin system
call plug#end()
