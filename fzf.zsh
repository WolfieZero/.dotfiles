# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
source "/opt/homebrew/opt/fzf/shell/completion.zsh"

# Key bindings
# ------------
# source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

fcd() {
  local dir
  dir=$(fd --type d --hidden --follow --exclude .git | fzf +m) &&
  cd "$dir"
}
