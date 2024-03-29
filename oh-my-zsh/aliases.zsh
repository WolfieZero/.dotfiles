# Deletion
# ------------------------------------------------------------------------------

alias del="rm -rf $1"
alias delete=del

# Node
# ------------------------------------------------------------------------------

alias node--delete-all="find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +"
alias node--update-packages="npx npm-check-updates -u"
alias node--nuke-packages="del node_modules; del package-lock.json"
alias node--sort-package-json="npx sort-package-json"

alias nup="node--update-packages"
alias npr="npm run"
alias nnp="node--nuke-packages"

# Compress
# ------------------------------------------------------------------------------

# alias zip='tar -jcvf $1 $2' # zip to-file.tar this-folder
# alias unzip='tar -jxvf $1'  # unzip this-file.tar

# Processes
# ------------------------------------------------------------------------------

alias top="htop"
alias top--original-="/usr/bin/top"

# Git
# ------------------------------------------------------------------------------

alias git--ignore="npx goops"
alias git--degit="npx degit $1"

# Python
# ------------------------------------------------------------------------------

alias startenv="source env/bin/activate"
alias stopenv="deactivate"
# alias python="python3"
export NODE_GYP_FORCE_PYTHON=/usr/local/bin/python

# PHP
# ------------------------------------------------------------------------------

alias artisan="php artisan"
alias valet-open="e ~/.valet"
alias use-php74="brew link --overwrite --force shivammathur/php/php@7.4"
alias use-php="brew unlink php && brew link php"

# Other
# ------------------------------------------------------------------------------

alias help="cht.sh"
alias bu="brew update && brew upgrade && brew cleanup"
alias hosts="code /etc/hosts"
alias add-dock-split="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type=\"spacer-tile\";}' && killall Dock"
alias serve="npx browser-sync start --server --files '**/*.*' --no-notify --no-open"
alias l="eza -lah"
alias ibrew="arch -x86_64 /usr/local/bin/brew" # running brew for Rosetta
# alias brew="arch -arm64e /opt/homebrew/bin/brew" # running brew natively
alias vim="nvim"
