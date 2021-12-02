vim.opt.listchars:append("eol:↲")

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  show_end_of_line = true,
  disable_with_nolist = true,
  buftype_exclude = { "terminal" },
  filetype_exclude = { "help", "dashboard", "packer"},
}
