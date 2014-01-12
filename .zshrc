# LANG
export LANG=ja_JP.UTF-8

# Emacs like keybind
bindkey -e

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# typescript
export PATH=$(which tvm | sed -e "s/bin/lib\/node_modules/")/current/bin:$PATH

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init - zsh)"

# tvm
export PATH=$(which tvm | sed -e "s/bin/lib\/node_modules/")/current/bin:$PATH

# emacs
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacs.app="/Applications/Emacs.app/Contents/MacOS/Emacs"

# vim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim.app='/Applications/MacVim.app/Contents/MacOS/MacVim'


# PROMPT
PROMPT="%/%% "
RPROMPT="%T"
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

# etc
setopt transient_rprompt
autoload -U compinit
compinit -u
alias ls='ls -GF'

# set terminal title including current directory
case "${TERM}" in
kterm*|xterm)
    precmd() {
        echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
    }
    ;;
esac
