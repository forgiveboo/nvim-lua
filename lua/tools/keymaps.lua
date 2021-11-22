-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map('n', '<c-p>', "<cmd>lua require('fzf-lua').files()<CR>", opt)
map('n', '<c-n>', ":NvimTreeToggle<CR>", opt)
map('n', '<A-i>', '<cmd>lua require("FTerm").toggle()<CR>', opt)
map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opt)
map('n', '<A-c>', '<cmd>lua require("fine-cmdline").open()<CR>', opt)
map('n', '<A-s>', '<Cmd>lua require(\'jdtls\').code_action()<CR>', opt)
map('n', '<C-x>', ':q<CR>', opt)
map('n', '<c-s>', ':w<CR>', opt)
map('n', '<A-p>', ':Glow<CR>', opt)
map('n', 'F5',    'SnipRun<CR>', opt)
