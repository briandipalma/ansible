lua << EOF
  require("which-key").setup {
  }
EOF

" Fix weird styling with NeoSolarized theme
hi WhichKey ctermbg=black ctermfg=black
hi WhichKeyDesc ctermbg=black ctermfg=black
hi WhichKeyGroup ctermbg=black ctermfg=black
