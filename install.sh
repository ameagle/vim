#!/usr/local/bin/bash
cd  ~
#git clone https://github.com/ameagle/vim.git
mkdir -p vim/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -fs ~/vim/.bashrc ~/.bashrc
ln -fs ~/vim/.vim ~/.vim
ln -fs ~/vim/.vimrc ~/.vimrc
ln -fs ~/vim/.tmux.conf ~/.tmux.conf
vim -c ":PluginInstall"

