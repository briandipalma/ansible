require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "lua" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}
