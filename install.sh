#!/usr/local/bin/bash
cd  ~
#git clone https://github.com/ameagle/vim.git
ln -fs ~/vim/.bashrc ~/bash.rc
ln -fs ~/vim/.vim ~/.vim
ln -fs ~/vim/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c ":PluginInstall"

