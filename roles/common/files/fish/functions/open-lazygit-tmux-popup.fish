function open-lazygit-tmux-popup
  tmux popup -E -w 90% -h 90% "lazygit -p $PWD"
end
