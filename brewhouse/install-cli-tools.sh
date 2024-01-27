#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Install CLI tools
# ------------------------------------------------------------------------------

tools=(
  htop         # terminal system monitor
  fzf          # fuzzy finder
  eza          # ls replacement
  bat          # cat replacement
  fd           # find replacement
)

brew_install_multiple "${tools[@]}"
