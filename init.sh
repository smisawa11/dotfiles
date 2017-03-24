#!/bin/sh
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
rm -r ~/.vim
ln -s ~/dotfiles/.vim ~/.vim

#peco install
cd
wget https://github.com/peco/peco/releases/download/v0.2.0/peco_linux_amd64.tar.gz
tar xfvz peco_linux_amd64.tar.gz
sudo cp peco_linux_amd64/peco /usr/local/bin
