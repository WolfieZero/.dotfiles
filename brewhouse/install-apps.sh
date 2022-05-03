#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Install aps
# ------------------------------------------------------------------------------

apps=(
  appcleaner                # removes apps
  keepingyouawake           # disable screen sleep
  keka                      # file archiver
  notion                    # note app
  numi                      # verbose calculator
  spotify                   # music
  atext                     # text completion
  rectangle                 # window control
  monitorcontrol            # brihgtness control
)

brew_install_multiple "${apps[@]}"

echo 'App Store Installables'
echo '----------------------'
echo ' - Hidden Bar  https://apps.apple.com/gb/app/hidden-bar/id1452453066?mt=12'
echo ' - TickTick    https://apps.apple.com/gb/app/ticktick-to-do-list-calendar/id966085870?mt=12'
