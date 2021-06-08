set -gx FZF_DEFAULT_OPTS "--multi --bind='ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all'"
set -gx FZF_DEFAULT_COMMAND "fd --type f"
set -gx FZF_CTRL_T_COMMAND "fd --type f . \$dir"
set -gx FZF_ALT_C_COMMAND "fd --type d . \$dir"
