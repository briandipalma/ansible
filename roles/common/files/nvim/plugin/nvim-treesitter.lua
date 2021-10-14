require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "css", "html", "javascript", "json", "lua", "scss", "typescript", "yaml"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}
