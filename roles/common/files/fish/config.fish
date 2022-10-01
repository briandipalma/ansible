# This isn't prefixed to PATH in all distros
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin

# pnpm
set -gx PNPM_HOME "~/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
