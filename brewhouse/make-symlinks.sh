#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Symlinks
# ------------------------------------------------------------------------------

# rm -rf ~/.ssh
# ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/System/ssh/ ~/.ssh

# rm -rf ~/.gitconfig
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig

# rm -rf ~/.gitignore
ln -s ~/.dotfiles/git/.gitignore ~/.gitignore

# rm -rf ~/Library/Application\ Support/espanso
ln -s ~/.dotfiles/apps/espanso ~/Library/Application\ Support/espanso
