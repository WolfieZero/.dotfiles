#!/usr/bin/env bash

# `brew install`  list installer
brew_install_multiple () {
  apps="${1}"
  shift
  for app in ${apps[*]}
  do
    brew install $app
  done
  brew cleanup
}

# `mass install` list installer
app_store_install_multiple () {
  apps="${1}"
  shift
  for app in ${apps[*]}
  do
    mas install $app
  done
}
