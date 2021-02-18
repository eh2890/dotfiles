#!/bin/bash

# getting commit message data
user="$(cut -d'.' -f1 <<<"${HOSTNAME}")"
currentdate=$(date)

# pulling
cd ~/personal_settings/
git pull --ff-only

# copying all files to where they are being used
cp ~/personal_settings/.bashrc ~/.bashrc
cp ~/personal_settings/.vimrc ~/.vimrc
cp ~/personal_settings/.vim/plugged/vimtex/ftplugin/tex.vim ~/.vim/plugged/vimtex/ftplugin/tex.vim
cp -r ~/personal_settings/Library/texmf/tex/latex/local/ ~/Library/texmf/tex/latex/local/
cp -r ~/personal_settings/.vim/UltiSnips/ ~/.vim/UltiSnips/

printf "\n\nSynced by $user on $currentdate\n\n"
