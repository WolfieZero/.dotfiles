# Path to your oh-my-zsh installation.
# ------------------------------------------------------------------------------

export ZSH=${HOME}/.oh-my-zsh
export DOTFILES=${HOME}/.dotfiles
export FUNCTIONS=${DOTFILES}/oh-my-zsh/functions

# Set name of the theme to load.
# ------------------------------------------------------------------------------

ZSH_THEME="boom"

export CLICOLOR=1
export TERM=xterm-256color

NVM_HOMEBREW=$(brew --prefix nvm)
zstyle ':omz:plugins:nvm' autoload true

# Would you like to use another custom folder than $ZSH/custom?
# ------------------------------------------------------------------------------

ZSH_CUSTOM=${DOTFILES}/oh-my-zsh

# Additional private configs
# ------------------------------------------------------------------------------

for file (${DOTFILES}/secure/*.zsh); source $file

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# ------------------------------------------------------------------------------
# Custom plugins may be added to ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(zsh-syntax-highlighting node nvm)

# Load Oh My Zsh
# ------------------------------------------------------------------------------

source $ZSH/oh-my-zsh.sh

# User configuration
# ------------------------------------------------------------------------------

export PATH="/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$PATH"

# Node
# ------------------------------------------------------------------------------

export PATH="$PATH:$HOME/.npm-packages/bin"
export PATH="$PATH:./node_modules/.bin"

export PATH="$HOME/.yarn/bin:$PATH"

# PHP
# ------------------------------------------------------------------------------

export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"

export PATH="$PATH:./.vendor/bin:$PATH"

export PATH="$PATH:./vendor/bin"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:./docker-containers/laravel/sail/bin"

# Flutter
# ------------------------------------------------------------------------------

export PATH="$PATH:$HOME/flutter/bin"

# Dotfile bin folder
# ------------------------------------------------------------------------------

export PATH="$DOTFILES/bin:$PATH"

# sqlite3
# ------------------------------------------------------------------------------

export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

# Android
# ------------------------------------------------------------------------------

export PATH="${HOME}/Library/Android/sdk/emulator:${HOME}/Library/Android/sdk/platform-tools:${PATH}"

# After this list it's been added automatically --------------------------------
