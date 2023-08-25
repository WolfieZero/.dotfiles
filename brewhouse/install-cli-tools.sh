#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Install CLI tools
# ------------------------------------------------------------------------------

tools=(
  htop         # terminal system monitor
  # imagemagick  #
  exa          # ls replacement
)

brew_install_multiple "${tools[@]}"
