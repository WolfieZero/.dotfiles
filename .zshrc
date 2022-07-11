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

# Would you like to use another custom folder than $ZSH/custom?
# ------------------------------------------------------------------------------

ZSH_CUSTOM=${DOTFILES}/oh-my-zsh

# Additional private configs
# ------------------------------------------------------------------------------

# for config_file (${HOME}/.secret-zsh/*.zsh(N)); do
#   source $config_file
# done

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# ------------------------------------------------------------------------------
# Custom plugins may be added to ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(zsh-syntax-highlighting laravel node)

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

# PHP / Composer
# ------------------------------------------------------------------------------

export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/php@7.4/lib"
export CPPFLAGS="-I/opt/homebrew/opt/php@7.4/include"

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

# autoload `nvm use`
# ------------------------------------------------------------------------------

if test -f "/opt/homebrew/opt/nvm/nvm.sh"; then
  export NVM_DIR="$HOME/.nvm"
    . "/opt/homebrew/opt/nvm/nvm.sh"
    . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

  autoload -U add-zsh-hook

  load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"
    if [ -n "$nvmrc_path" ]; then
      local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

      if [ "$nvmrc_node_version" = "N/A" ]; then
        nvm install
      elif [ "$nvmrc_node_version" != "$node_version" ]; then
        nvm use
      fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
      echo "Reverting to nvm default version"
      nvm use default
    fi
  }

  add-zsh-hook chpwd load-nvmrc
  load-nvmrc

fi

# --------------- After this list it's been added automatically ---------------
