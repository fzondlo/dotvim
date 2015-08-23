##### Installation

From your homedirectory (on Linux/Mac OSX):
* `git clone git://github.com/fzondlo/dotvim`
* `ln -sfn dotvim .vim`
* `ln -sfn dotvim/vimrc .vimrc`
* curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
* install the `ag` command for better performance `brew install the_silver_searcher`

# Bindings
* `<spacebar>` - leader
* `<leader>v` - previous buffer
* `<leader>b` - next buffer
* `<ctrl-t>` - folds functions
* `gd` - enhanced go to function under cursor
* `<option-s>` - Save a file (`<ctrl-Y>`)
* use Alt+arrow keys to resize windows
* `:W` - saves files using sudo permissions
* `<cmd-q>` - close file quickly (bound through hex 0x1f in iterm)
* `%` - jumps from beginning to end of method

# ctrlP
* `<leader>r` - Refresh files and show CtrlP file finder

# nerdtree
* `ctrl-p` - Open nerdtree
* `<leader>p` - focus to current file in nerd tree

# Windowswap
* `<leader>s` Select origin split, then switch to destination split and hit `<leader>s` again to paste (or switch) the splits

# JustyJuggler
* `<leader>v` Lusty juggler buffer selection menu
