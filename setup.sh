#!/usr/bin/env sh

LN="ln -s"
SOURCE=`pwd`

`git submodule init 1>/dev/null`
`git submodule update --recursive 1>/dev/null`

# vim (core)
$LN $SOURCE/dot_vim/vimrc ~/.vimrc

# vim (pathogen)
mkdir ~/.vim
$LN $SOURCE/dot_vim/autoload ~/.vim/autoload
$LN $SOURCE/dot_vim/bundle ~/.vim/bundle
$LN $SOURCE/dot_vim/ftdetect ~/.vim/ftdetect
$LN $SOURCE/dot_vim/indent ~/.vim/indent
$LN $SOURCE/dot_vim/plugin ~/.vim/plugin
$LN $SOURCE/dot_vim/syntax ~/.vim/syntax

# tmux
$LN $SOURCE/tmux.conf ~/.tmux.conf

# oh-my-zsh
$LN $SOURCE/zshrc ~/.zshrc
