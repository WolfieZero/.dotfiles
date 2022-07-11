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
  tableplus               # generic db tool

  # Browser
  # homebrew/cask-versions/firefox-developer-edition
  # homebrew/cask-versions/google-chrome-dev
  # google-chrome

  # Design
  figma

  # Screen shots
  shottr

)

brew_install_multiple "${apps[@]}"

echo 'App Store Installables'
echo '----------------------'
echo ' - Sysytem Color Picker  https://apps.apple.com/gb/app/system-color-picker/id1545870783?mt=12'
echo ' - Timemator Basic       https://apps.apple.com/gb/app/timemator-basic/id1458451198?mt=12
