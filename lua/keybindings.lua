-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
local builtin = require('telescope.builtin')

-- leader
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- nvimTree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
-- map('n', '<A-b>', ':NvimTreeFocus<CR>', opt)

-- 分屏相关
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- nvim-telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- 复制相关
map("n", "<leader>pp", '""+y', opt)

