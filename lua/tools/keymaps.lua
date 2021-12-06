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

-- ctlr + hjkl  窗口之间跳转
map("n", "<c-h>", "<C-w>h", opt)
map("n", "<c-j>", "<C-w>j", opt)
map("n", "<c-k>", "<C-w>k", opt)
map("n", "<c-l>", "<C-w>l", opt)

-- 保存和退出
map('n', '<C-x>', ':q<CR>', opt)
map('n', '<C-s>', ':w<CR>', opt)

-- 开关文件树
map('n', '<A-n>', ":NvimTreeToggle<CR>", opt)
-- 开关浮动终端
map('n', '<A-t>', '<cmd>lua require("FTerm").toggle()<CR>', opt)
map('t', '<A-t>', '<cmd>lua require("FTerm").toggle()<CR>', opt)
-- 打开浮动命令栏
map('n', '<A-c>', '<cmd>lua require("fine-cmdline").open()<CR>', opt)
-- markdown预览
map('n', '<A-m>', ':Glow<CR>', opt)
-- 快速运行代码
map('n', '<F5>',  ':SnipRun<CR>', opt)
-- 后一个buffer
map('n', '<A-j>', ':BufferLineCycleNext<CR>',opt)
-- 前一个buffer
map('n', '<A-k>', ':BufferLineCyclePrev<CR>', opt)
-- 选择一个buffer
map('n', '<A-b>', ':BufferLinePick<CR>', opt)
-- 选择一个buffer并关闭
map('n', '<leader>bc', ':BufferLinePickClose<CR>', opt)
-- 文件搜索
map('n', '<A-f>', '<cmd>lua require("telescope.builtin").find_files()<cr>', opt)
map('n', '<leader>fl', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opt)
map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', opt)
map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opt)
-- 一系列lspsaga快捷键
map('n', '<leader>lf', '<cmd>lua require("lspsaga.provider").lsp_finder()<CR>', opt)
--map('n', '<leader>ca', '<cmd>lua require("lspsaga.codeaction").code_action()<CR>', opt)
--map('v', '<leader>ca', ':<C-U>lua require("lspsaga.codeaction").range_code_action()<CR>', opt)
--map('n', '<leader>rd', '<cmd>lua require("lspsaga.hover").render_hover_doc()<CR>', opt)
map('n', '<A-dowm>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', opt)
map('n', '<A-up>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', opt)
--map('n', '<leader>sh', '<cmd>lua require("lspsaga.signaturehelp").signature_help()<CR>', opt)
map('n', '<A-r>', '<cmd>lua require("lspsaga.rename").rename()<CR>', opt)
map('n', '<A-p>', '<cmd>lua require("lspsaga.provider").preview_definition()<CR>', opt)
map('n', '<leader>ld', '<cmd>lua require("lspsaga.diagnostic").show_line_diagnostics()<CR>', opt)
map('n', '<leader>cd', '<cmd>lua require("lspsaga.diagnostic").show_cursor_diagnostics()<CR>', opt)
map('n', '<leader>jp', ' <cmd>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_prev()<CR>', opt)
map('n', '<leader>jn', '<cmd>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_next()<CR>', opt)
-- lazygit
map('n', '<A-g>', ':LazyGit<CR>', opt)
-- searchbox
map('n', '<A-s>',  '<cmd>lua require("searchbox").incsearch()<CR>', opt)
map('v', '<A-s>',  '<Esc><cmd>lua require("searchbox").incsearch({visual_mode = true})<CR>', opt)
