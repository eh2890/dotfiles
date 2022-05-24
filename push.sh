#!/bin/bash

# getting commit message data
user="$(cut -d'.' -f1 <<<"${HOSTNAME}")"
currentdate=$(date)

# copying all files to ~/personal settings
cp ~/.bashrc ~/personal_settings/.bashrc
cp ~/.vimrc ~/personal_settings/.vimrc
cp ~/.profile ~/personal_settings/.profile
cp ~/.bash_profile ~/personal_settings/.bash_profile
cp ~/.vim/plugged/vimtex/ftplugin/tex.vim ~/personal_settings/.vim/plugged/vimtex/ftplugin/tex.vim
cp -r ~/Library/texmf/tex/latex/local/ ~/personal_settings/Library/texmf/tex/latex/local/
cp -r ~/.vim/UltiSnips/ ~/personal_settings/.vim/UltiSnips/

# pushing to repo
cd ~/personal_settings/
git add -A
git commit -m "Updated by $user on $currentdate"
git push

printf "\n\nUpdated by $user on $currentdate\n\n"
