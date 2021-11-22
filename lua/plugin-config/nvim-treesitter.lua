require'nvim-treesitter.configs'.setup {
  --ensure_installed = {"java", "lua"},
  ensure_installed = "all",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true
  }
}
