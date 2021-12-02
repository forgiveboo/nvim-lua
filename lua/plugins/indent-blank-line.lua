vim.opt.listchars:append("eol:↲")
vim.g.indent_blankline_filetype_exclude = {
  'dashboard',
  'packer',
  'nvim-lsp-installer'
}
vim.g.indent_blankline_buftype_exclude = {'terminal'}

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  show_end_of_line = true,
}
