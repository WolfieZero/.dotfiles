#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Install apps
# ------------------------------------------------------------------------------

apps=(
  1password                 # password manager
  appcleaner                # removes apps
  keepingyouawake           # disable screen sleep
  keka                      # file archiver
  notion                    # note app
  numi                      # verbose calculator
  spotify                   # music
  espanso                   # text completion
  rectangle                 # window control
  mas                       # cli tool for mac app store
  zoom                      # video conferencing
)

app_store_apps=(
  1452453066 # hidden bar
  1607635845 # velja
)

brew_install_multiple "${apps[@]}"
app_store_install_multiple "${app_store_apps[@]}"
