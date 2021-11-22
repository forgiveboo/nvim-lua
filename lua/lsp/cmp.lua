local cmp = require'cmp'
  
cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- { name = 'vsnip' }, -- For vsnip users.
    { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
    {name = 'nvim_lua'}
  }, {
    { name = 'buffer' },
    { name = 'cmdline'},
    { name = 'path' }
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
local servers = {
  "jsonls",
  "clangd",
  "pyright",
  "vimls",
  "html",
  "cssls",
  "phpactor",
--  "jdtls",
  "sumneko_lua"
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

for _, server in ipairs(servers) do
  require("lspconfig")[server].setup {
    capabilities = capabilities
  }
end

local sumneko_root_path = os.getenv('HOME')..'/.local/share/nvim/lsp_servers/sumneko_lua/extension/server'
require('lspconfig').sumneko_lua.setup {
-- capabilities = capabilities,
  cmd = {sumneko_root_path .. '/bin/Linux/lua-language-server', "-E", sumneko_root_path .. "/main.lua"},
  settings = {
    Lua = {
      runtime = {
      -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
      version = 'LuaJIT',
      -- Setup your lua path
      path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      }
    }
  }
}

local jedi_root_path = os.getenv("HOME") .. '/.local/share/nvim/lsp_servers/jedi_language_server'
require'lspconfig'.jedi_language_server.setup{
  cmd = {jedi_root_path .. '/venv/bin/jedi-language-server'},
  filetypes = { "python" },
--  root_dir = vim.fn.getcwd(),
  single_file_support = true
}


local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
--local config = {
require'lspconfig'.jdtls.setup{
  cmd = { 
    "java", 
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xms1g",
    "-Xmx2G",
    "--add-modules=ALL-SYSTEM",
    "--add-opens", "java.base/java.util=ALL-UNNAMED",
    "--add-opens", "java.base/java.lang=ALL-UNNAMED",
    "-jar", "/home/forgiveboo/.local/share/nvim/lsp_servers/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
    "-configuration", "/home/forgiveboo/.local/nvim/lsp_servers/jdtls/config_linux",
    "-data", "~/.cache/jdtls-workspace" .. project_name
  },
  filetypes = { "java" },
  handlers = {
    --["language/status"] = <function 1 >,
    --["textDocument/codeAction"] = <function 2>,
    --["textDocument/rename"] = <function 3>,
    --["workspace/applyEdit"] = <function 4>
  },
--  init_options = {
--    jvm_args = {},
--    workspace = ""
--  },
--  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
--  root_dir = {
--    -- Single-module projects
--    {
--      'build.xml', -- Ant
--      'pom.xml', -- Maven
--      'settings.gradle', -- Gradle
--      'settings.gradle.kts', -- Gradle
--    },
    -- Multi-module projects
--    { 'build.gradle', 'build.gradle.kts' },
--    } or vim.fn.getcwd(),
  single_file_mode = true
--}
}
