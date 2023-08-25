#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Install dev tools
# ------------------------------------------------------------------------------

apps=(
  # git                   # override mac's
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
  # sequel-ace            # mysql/mariadb tool
  # tableplus               # generic db tool

  # Browser
  homebrew/cask-versions/firefox-developer-edition
  homebrew/cask-versions/google-chrome-dev
  # google-chrome

  # Design
  figma
)

brew_install_multiple "${apps[@]}"

# mas install 1518036000 # Sequel Ace
# mas install 1458451198 # Timemator Basic
mas install 1545870783 # system color picker
