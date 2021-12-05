vim.g.dashboard_default_executive ='telescope'
vim.g.dashboard_custom_shortcut = {
  last_session       = ' SPC sl ',
  find_history       = ' SPC fh ',
  find_file          = ' SPC ff ',
  new_file           = ' SPC cn ',
  change_colorscheme = ' SPC tc ',
  find_word          = ' SPC fa ',
  book_marks         = ' SPC fb '
}
vim.g.dashboard_custom_header = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}
vim.cmd("autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2")
