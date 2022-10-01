# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export BASH_SILENCE_DEPRECATION_WARNING=1

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History Settings

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Window Size Settings
shopt -s checkwinsize


# Less Settings
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Prompt
PS1='\u@\h \w \$ '
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

unset color_prompt force_color_prompt
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\e[1m\e[38;5;107m[\w]\e[0m $ \e[0m"
    ;;
*)
    ;;
esac

# Editor Settings
export EDITOR=vim

# Aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias icloud='cd ~/icloud'
alias skim='open -a Skim.app'
alias preview='open -a Preview'
alias haskell='stack --resolver lts-18.14 ghci'
alias resumes='cd ~/resumes'
alias lc='cd ~/Leetcode'
alias todo='cd /Users/eumin/Library/Mobile\ Documents/com~apple~CloudDocs/To_Do_List && vim To_Do_List.tex && ./export.sh && cd - &> /dev/null'

alias sipser='preview /Users/eumin/Library/Mobile\ Documents/com~apple~CloudDocs/Textbooks/CS/Sipser.pdf'
alias clrs='preview /Users/eumin/Library/Mobile\ Documents/com~apple~CloudDocs/Textbooks/CS/CLRS.pdf'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

gpp() {
    g++ -std=c++11 -O2 -Wall $1 -o out
}

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH=/opt/homebrew/bin:$PATH

umask 077
