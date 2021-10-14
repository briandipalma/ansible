require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "css", "html", "java", "javascript", "json", "kotlin", "lua", "scss", "typescript", "yaml"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}
