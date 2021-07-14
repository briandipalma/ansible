function open-lazygit-tmux-popup
  set repo_root $PWD

  # While not at the root of a git repo and the root of the filesystem
  while not test -e $repo_root/.git && test (dirname $repo_root) != $repo_root
    set repo_root (dirname $repo_root)
  end

  if test -d $repo_root/.git
    # In a standard git repo
    tmux popup -E -w 100% -h 100% "lazygit -p $repo_root"
  else if test -f $repo_root/.git
    # In a git worktree
    tmux popup -E -w 100% -h 100% "lazygit -w $repo_root"
  end
end
