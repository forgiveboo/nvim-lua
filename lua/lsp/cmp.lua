local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then
  return
end

vim.o.completeopt = "menuone,noselect"

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local luasnip = require "luasnip"
local lspkind = require("lspkind")

local compare = require('cmp.config.compare')

local cmp = require'cmp'

-- 自定义提示边栏图标
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
vim.cmd('setlocal omnifunc=v:lua.vim.lsp.omnifunc')

-- 实现Function后追加()
local keymap = require("cmp.utils.keymap")
cmp.confirm = function(option)
  option = option or {}
  local e = cmp.core.view:get_selected_entry() or (option.select and cmp.core.view:get_first_entry() or nil)
  if e then
    cmp.core:confirm(
      e,
      {
        behavior = option.behavior
      },
      function()
        local myContext = cmp.core:get_context({reason = cmp.ContextReason.TriggerOnly})
        cmp.core:complete(myContext)
        --function() 自动增加()
        if
          e and e.resolved_completion_item and
            (e.resolved_completion_item.kind == 3 or e.resolved_completion_item.kind == 2)
         then
          vim.api.nvim_feedkeys(keymap.t("()<Left>"), "n", true)
        end
      end
    )
    return true
  else
    if vim.fn.complete_info({"selected"}).selected ~= -1 then
      keymap.feedkeys(keymap.t("<C-y>"), "n")
      return true
    end
    return false
  end
end

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
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
    { name = 'luasnip' },
    { name = 'nvim_lua'}
  }, {
    { name = 'buffer' },
    { name = 'cmdline'},
    { name = 'path' }
  }),
  formatting = {
    format = lspkind.cmp_format({with_text = true, maxwidth = 60})
  }
})

cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})
