#!/bin/bash

# Emacs
if [ -e '/Applications/Emacs.app' ]; then
  alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
  alias emacs.app='/Applications/Emacs.app/Contents/MacOS/Emacs'
fi

# Vim
if [ -e '/Applications/MacVim.app' ]; then
  alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
  alias vim.app='/Applications/MacVim.app/Contents/MacOS/MacVim'
fi

# List
case "${OSTYPE}" in
darwin*)
  alias ls="ls -G"
  ;;
linux*)
  alias ls='ls --color'
  ;;
esac

# Rm
if [ -e "$__CHEST/node_modules/.bin/trash" ]; then
  alias rm="$__CHEST/node_modules/.bin/trash"
fi

# Server
if [ -e "$__CHEST/node_modules/.bin/http-server" ]; then
  alias server="$__CHEST/node_modules/.bin/http-server"
fi
