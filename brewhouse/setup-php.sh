#!/usr/bin/env bash

source ~/.dotfiles/brewhouse/_config.sh

# Setup PHP (using Valet)
# ------------------------------------------------------------------------------

apps=(
  php@7.4
  dbngin
)

brew_install_multiple "${apps[@]}"

# vagrant plugin install vagrant-hostmanager

# rm -f ~/.php_cs
# ln -s ~/dotfiles/.php_cs ~/.php_cs

# Install Composer
curl -sS https://getcomposer.org/installer | php
sudo mkdir -p /usr/local/bin
mv composer.phar /usr/local/bin/composer

# Get Valet
composer global require laravel/valet

# Use PHP 7.4
valet use php@7.4
composer global update

# Install Valet
valet install

# Install Composer packages
composer global require "squizlabs/php_codesniffer=*"
