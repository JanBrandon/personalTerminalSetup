Personal configuration for vim

Copy the content of personalConf/xterm/profile.txt to ION preferences (edit, preferences)

Configuration for tmux, vim and neovim:
ln -s ~/ <personalConf/vim> .vim
ln -s ~/ <personalConf/vim/vimrc> .vimrc

ln -s ~/.config <personalConf/nvim> nvim

ln -s ~/ <personalConf/tmux/tmux.conf> .tmux.conf

Create alias for tmux in .aliases (for color issue in vim)
alias tmux tmux -2

Add this lines of code in .cshrc.<user>
stty erase "^?"
set prompt="%{\033[1;35m%}Janet>%{\033[0m%} "




