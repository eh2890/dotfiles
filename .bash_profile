if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
[[ -f ~/.bashrc ]] && source ~/.bashrc # ghcup-env
export PATH="/opt/homebrew/opt/arm-gcc-bin@8/bin:$PATH"
