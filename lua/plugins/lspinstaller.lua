local lsp_installer = require("nvim-lsp-installer")

lsp_installer.settings({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

lsp_installer.on_server_ready(function (server)
  local opts = {}
  server:setup(opts)
  vim.cmd([[ do User LspAttach Buffers]])
end)
