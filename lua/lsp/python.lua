local nvim_lsp = require('lspconfig')

local jedi_root_path = os.getenv('HOME') .. '/.local/share/nvim/lsp_servers/jedi_language_server'

nvim_lsp.jedi_language_server.setup {
  cmd = {jedi_root_path .. '/venv/bin/jedi-language-server'},
  filetypes = {'python'},
  single_file_support = true
}
