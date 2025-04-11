vim.g.mapleader = " "

-- Tabs
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Scrolling
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5

-- Visuals
vim.opt.linebreak = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Line Numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Keymaps
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = "Move to left split" })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = "Move to below split" })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = "Move to above split" })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = "Move to right split" })
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', { desc = "Clear search highlight" })

