#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Setup Node
# ------------------------------------------------------------------------------

# Install NVM
brew install nvm

# Install LTS version of Node
nvm install --lts

# Set it as default
nvm alias default node
