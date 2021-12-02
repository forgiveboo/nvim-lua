-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- visual模式下缩进代码
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)

-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt) -- close others

-- 比例控制
map("n", "s>", ":vertical resize +20<CR>", opt)
map("n", "s<", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>",opt)
map("n", "sk", ":resize -10<CR>",opt)

-- alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- 保存和退出
map('n', '<C-x>', ':q<CR>', opt)
map('n', '<C-s>', ':w<CR>', opt)

-- 插件快捷键
map('n', '<leader>nt', ":NvimTreeToggle<CR>", opt)
map('n', '<leader>tm', '<cmd>lua require("FTerm").toggle()<CR>', opt)
map('t', '<leader>tm', '<cmd>lua require("FTerm").toggle()<CR>', opt)
map('n', '<leader>cl', '<cmd>lua require("fine-cmdline").open()<CR>', opt)
map('n', '<leader>mp', ':Glow<CR>', opt)
map('n', '<F5>',  ':SnipRun<CR>', opt)
map('n', '<leader>bh', ':BufferLineCycleNext<CR>',opt)
map('n', '<leader>bl', ':BufferLineCyclePrev<CR>', opt)
map('n', '<leader>bp', ':BufferLinePick<CR>', opt)
map('n', '<leader>bc', ':BufferLinePickClose<CR>', opt)
map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', opt)
map('n', '<leader>fl', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opt)
map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', opt)
map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opt)
map('n', '<leader>lf', '<cmd>lua require("lspsaga.provider").lsp_finder()<CR>', opt)
map('n', '<leader>ca', '<cmd>lua require("lspsaga.codeaction").code_action()<CR>', opt)
map('v', '<leader>ca', ':<C-U>lua require("lspsaga.codeaction").range_code_action()<CR>', opt)
map('n', '<leader>rd', '<cmd>lua require("lspsaga.hover").render_hover_doc()<CR>', opt)
map('n', '<leader>sw', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', opt)
map('n', '<leader>su', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', opt)
map('n', '<leader>sh', '<cmd>lua require("lspsaga.signaturehelp").signature_help()<CR>', opt)
map('n', '<leader>rm', '<cmd>lua require("lspsaga.rename").rename()<CR>', opt)
map('n', '<leader>pd', '<cmd>lua require("lspsaga.provider").preview_definition()<CR>', opt)
map('n', '<leader>ld', '<cmd>lua require("lspsaga.diagnostic").show_line_diagnostics()<CR>', opt)
map('n', '<leader>cd', '<cmd>lua require("lspsaga.diagnostic").show_cursor_diagnostics()<CR>', opt)
map('n', '<leader>jp', ' <cmd>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_prev()<CR>', opt)
map('n', '<leader>jn', '<cmd>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_next()<CR>', opt)
