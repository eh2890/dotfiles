# personal_settings

## About

A repository so I can back up personal settings such as <code>.bashrc</code>, <code>.vimrc</code>, and other files/directories.

## Files Backed Up

- <code>~/.bashrc</code>
- <code>~/.vimrc</code>
- <code>~/.vim/plugged/vimtex/ftplugin/tex.vim</code>

## Directories Backed Up

- <code>~/Library/texmf/tex/latex/local/</code>
- <code>~/.vim/UltiSnips/</code>


## Updating Repository

- <code>$ cp ~/.bashrc ~/personal_settings/.bashrc</code>
- <code>$ cp ~/.vimrc ~/personal_settings/.vimrc</code>
- <code>$ cp ~/.vim/plugged/vimtex/ftplugin/tex.vim ~/personal_settings/.vim/plugged/vimtex/ftplugin/tex.vim</code>
- <code>$ cp -r ~/Library/texmf/tex/latex/local/ ~/personal_settings/Library/texmf/tex/latex/local/</code>
- <code>$ cp -r ~/.vim/UltiSnips/ ~/personal_settings/.vim/UltiSnips/</code>
- <code>$ cd ~/personal_settings/</code>
- <code>$ git add -A</code>
- <code>$ git commit -m "message"</code>
- <code>$ git push</code>

## Updating Local Settings

- <code>$ cd ~/personal_settings/</code>
- <code>$ git pull</code>
- <code>$ cp ~/personal_settings/.bashrc ~/.bashrc</code>
- <code>$ cp ~/personal_settings/.vimrc ~/.vimrc</code>
- <code>$ cp ~/personal_settings/.vim/plugged/vimtex/ftplugin/tex.vim ~/.vim/plugged/vimtex/ftplugin/tex.vim</code>
- <code>$ cp -r ~/personal_settings/Library/texmf/tex/latex/local/ ~/Library/texmf/tex/latex/local/</code>
- <code>$ cp -r ~/personal_settings/.vim/UltiSnips/ ~/.vim/UltiSnips/</code>

## To Do When I Have Time

- Have some kind of error check so I don't accidentally overwrite with old settings
