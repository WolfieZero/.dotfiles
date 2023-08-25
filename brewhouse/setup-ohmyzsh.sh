#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Set Oh My ZSH
# ------------------------------------------------------------------------------

rm -f ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc

source ${HOME}/.zshrc
