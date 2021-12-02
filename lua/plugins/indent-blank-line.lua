vim.opt.listchars:append("eol:↲")

require("indent_blankline").setup {
  -- for example, context is off by default, use this to turn it on
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  show_end_of_line = true,
  indent_blankline_use_treesitter = true,
}
