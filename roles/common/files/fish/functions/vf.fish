function vf
  nvim -O (fzf -m --preview 'bat --color=always --line-range :500 {}')
end

