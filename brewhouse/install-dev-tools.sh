#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Install dev tools
# ------------------------------------------------------------------------------

apps=(
  git                   # override mac's
  iterm2                # terminal
  imagealpha               # optimise transparent pngs
  imageoptim               # images
  # homebrew/cask/docker  # development environments
  fork                  # git mananger
  # integrity             # website link checker
  runjs                 # js tool
  postman               # api tool
  visual-studio-code    # code editor

  # Database
  sequel-ace            # mysql/mariadb tool
  # sqlectron             # generic db tool

  #Browser
  browserosaurus           # browser picker
  homebrew/cask-versions/firefox-developer-edition
  # homebrew/cask-versions/google-chrome-dev
  google-chrome

  # Design
  figma

)

brew_install_multiple "${apps[@]}"
