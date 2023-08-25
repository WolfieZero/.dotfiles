#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Install aps
# ------------------------------------------------------------------------------

apps=(
  appcleaner                # removes apps
  # keepingyouawake           # disable screen sleep
  keka                      # file archiver
  notion                    # note app
  # numi                      # verbose calculator
  spotify                   # music
  # atext                     # text completion
  rectangle                 # window control
  # monitorcontrol            # brihgtness control
  mas                       # cli tool for mac app store
)

brew_install_multiple "${apps[@]}"

mas install 1452453066 # hidden bar
mas install 1607635845 # velga
