#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Install CLI tools
# ------------------------------------------------------------------------------

tools=(
  htop         # terminal system monitor
  # imagemagick  #
  # exa          #
)

brew_install_multiple "${tools[@]}"
