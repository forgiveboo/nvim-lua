-- leader key 为空格
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map('n', '<A-n>', ":NvimTreeToggle<CR>", opt)
map('n', '<A-i>', '<cmd>lua require("FTerm").toggle()<CR>', opt)
map('t', '<A-i>', '<cmd>lua require("FTerm").toggle()<CR>', opt)
map('n', '<A-c>', '<cmd>lua require("fine-cmdline").open()<CR>', opt)
map('n', '<A-p>', ':Glow<CR>', opt)
map('n', '<C-x>', ':q<CR>', opt)
map('n', '<C-s>', ':w<CR>', opt)
map('n', '<F5>',  ':SnipRun<CR>', opt)
map('n', '<C-l>', ':BufferLineCycleNext<CR>',opt)
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<C-p>', ':BufferLinePick<CR>', opt)
map('n', '<C-d>', ':BufferLinePickClose<CR>', opt)
map('n', '<S-f>', '<cmd>lua require("telescope.builtin").find_files()<cr>', opt)
map('n', '<S-l>', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opt)
map('n', '<S-b>', '<cmd>lua require("telescope.builtin").buffers()<cr>', opt)
map('n', '<S-h>', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opt)
