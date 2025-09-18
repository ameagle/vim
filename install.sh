#!/usr/local/bin/bash
cd  ~
#git clone https://github.com/ameagle/vim.git
# to work ]p -- paste from new line
mkdir -p ~/.vim/pack/tpope/start/unimpaired
rm -rf ~/.vim/pack/tpope/start/unimpaired
git clone https://tpope.io/vim/unimpaired.git ~/.vim/pack/tpope/start/unimpaired/
vim -u NONE -c "helptags unimpaired/doc" -c q

mkdir -p vim/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -fs ~/vim/.bashrc ~/.bashrc
ln -fs ~/vim/.vim ~/.vim
ln -fs ~/vim/.vimrc ~/.vimrc
ln -fs ~/vim/.tmux.conf ~/.tmux.conf
vim -c ":PluginInstall"
