# Enable Zsh history
HISTFILE="$HOME/.config/.zsh_history"
SAVEHIST=5000
HISTSIZE=2000

# Zsh options
# -------------------------

# Perform the cd command to a directory if provided as a command
setopt AUTO_CD
# Share history across multiple zsh sessions
setopt SHARE_HISTORY
# Append to history
setopt APPEND_HISTORY
# Try to correct the spelling of commands.
setopt CORRECT
# Try to correct the spelling of all arguments in a line.
setopt CORRECT_ALL

# Imports
# -------------------------

source "$HOME/.config/aliases"

# Starship prompt
# -------------------------

eval "$(starship init zsh)"

# zoxide
#--------------------------

eval "$(zoxide init zsh)"
