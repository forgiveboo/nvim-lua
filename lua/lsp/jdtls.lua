local nvim_lsp = require('lspconfig')
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = { 'markdown', 'plaintext' }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = {
		'documentation',
		'detail',
		'additionalTextEdits',
	},
}

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
    "-jar", "~/Lib/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar", 
    "-configuration", "~/Lib/jdtls/config_linux", 
    "-data", "~/.cache/jdtls-workspace" .. project_name, 
  },
  filetypes = { "java" },
  init_options = {
    jvm_args = {},
    workspace = vim.api.nvim_get_runtime_file("", true)
  },
  single_file_support = true,
  single_file_mode = true,
  capabilities = capabilities
}
