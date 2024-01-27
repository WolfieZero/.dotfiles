# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
# ------------------------------------------------------------------------------

export ZSH=${HOME}/.oh-my-zsh
export DOTFILES=${HOME}/.dotfiles
export FUNCTIONS=${DOTFILES}/oh-my-zsh/functions

# Set name of the theme to load.
# ------------------------------------------------------------------------------

# ZSH_THEME="boom"
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Brew Paths
# ------------------------------------------------------------------------------

local BREW_SQLITE_PATH=$(brew --prefix sqlite)

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

# Azure
# ------------------------------------------------------------------------------

# export PATH="$PATH:$HOME/.azure/bin:$PATH"

# Dotfile bin folder
# ------------------------------------------------------------------------------

export PATH="$DOTFILES/bin:$PATH"

# Android
# ------------------------------------------------------------------------------

export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home"

export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# sqlite3
# ------------------------------------------------------------------------------

export PATH="$BREW_SQLITE_PATH/bin:$PATH"
export LDFLAGS="-L$BREW_SQLITE_PATH/lib"
export CPPFLAGS="-I$BREW_SQLITE_PATH/include"
# export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

# export PATH="/usr/local/opt/sqlite/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/sqlite/lib"
# export CPPFLAGS="-I/usr/local/opt/sqlite/include"
# export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

# Ruby
# ------------------------------------------------------------------------------

# local READLINE_PATH=$(brew --prefix readline)
# local OPENSSL_PATH=$(brew --prefix openssl)

# # Use the OpenSSL from Homebrew instead of ruby-build
# # Note: the Homebrew version gets updated, the ruby-build version doesn't
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$OPENSSL_PATH --with-readline-dir=$READLINE_PATH"

# export RUBY_CONFIGURE_OPTS="--with-sqlite-dir=$SQLITE_PATH"

# # Place openssl@1.1 at the beginning of your PATH (preempt system libs)
# export PATH=$OPENSSL_PATH/bin:$PATH

eval "$(rbenv init - zsh)"


# Random
# ------------------------------------------------------------------------------



# After this list it's been added automatically --------------------------------

# pnpm
export PNPM_HOME="/Users/neil/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/neil/.bun/_bun" ] && source "/Users/neil/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ${DOTFILES}/p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/p10k.zsh.
[[ ! -f ~/.dotfiles/p10k.zsh ]] || source ~/.dotfiles/p10k.zsh

[ -f ~/.dotfiles/fzf.zsh ] && source ~/.dotfiles/fzf.zsh
