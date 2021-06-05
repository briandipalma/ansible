function new-tmux-window
  if not tmux select-window -t $argv[1]
    # Add 1 as `seq` includes the top bound of the range
    set tmuxWindows (math (tmux list-windows | wc -l) + 1)

    for i in (seq $tmuxWindows $argv[1])
      tmux new-window
    end
  end
end
