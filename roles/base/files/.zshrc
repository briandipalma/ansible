# Enable Zsh history
HISTFILE="$HOME/.config/.zsh_history"
SAVEHIST=5000
HISTSIZE=2000

# Zsh options
# -------------------------

setopt AUTO_CD
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY

# Imports
# -------------------------

source "$HOME/.config/aliases"

# Starship prompt
# -------------------------

eval "$(starship init zsh)"

# zoxide
#--------------------------

eval "$(zoxide init zsh)"
