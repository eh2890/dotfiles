if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
[[ -f ~/.bashrc ]] && source ~/.bashrc # ghcup-env

eval "$(/opt/homebrew/bin/brew shellenv)"
