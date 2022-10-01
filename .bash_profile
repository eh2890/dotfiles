if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
[[ -f ~/.bashrc ]] && source ~/.bashrc # ghcup-env
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/arm-gcc-bin@8/bin:$PATH"

# opam configuration
test -r /Users/eumin/.opam/opam-init/init.sh && . /Users/eumin/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
