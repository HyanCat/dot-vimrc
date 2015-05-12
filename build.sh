#!/bin/bash

date=`date +%Y-%m-%d_%H:%M`
mv ~/.vim ~/.vim.old.$date
mv ~/.vimrc ~/.vimrc.old.$date

git clone git://github.com/HyanCat/dot-vimrc.git ~/.vim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim +BundleInstall +qall

ln -s ~/.vim/vimrc ~/.vimrc
