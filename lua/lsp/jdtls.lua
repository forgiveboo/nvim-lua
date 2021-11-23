local nvim_lsp = require('lspconfig')
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

nvim_lsp.jdtls.setup {
  cmd = { 
    "/usr/lib/jvm/default/bin/java", 
    "-Declipse.application=org.eclipse.jdt.ls.core.id1", 
    "-Dosgi.bundles.defaultStartLevel=4", 
    "-Declipse.product=org.eclipse.jdt.ls.core.product", 
    "-Dlog.protocol=true", 
    "-Dlog.level=ALL", 
    "-Xms1g", 
    "-Xmx2G", 
    "--add-modules=ALL-SYSTEM", 
    "--add-opens", 
    "java.base/java.util=ALL-UNNAMED", 
    "--add-opens", 
    "java.base/java.lang=ALL-UNNAMED", 
    "-jar", "~/Lib/jdtls/plugins/org.eclipse.equinox.launcher_*.jar", 
    "-configuration", "~/Lib/jdtls/config_linux", 
    "-data", "~/.cache/jdtls-workspace" .. project_name, 
  },
  filetypes = { "java" },
  init_options = {
    jvm_args = {},
    workspace = vim.api.nvim_get_runtime_file("", true)
  },
  single_file_support = true,
  single_file_mode = true
}
