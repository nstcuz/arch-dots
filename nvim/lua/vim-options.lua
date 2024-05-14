-- set tab
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- set leader key
vim.g.mapleader = " "

-- set clipboard to reg 0
vim.opt.clipboard = 'unnamed,unnamedplus'

-- Enable search highlighting
-- vim.o.hlsearch = true

-- number of screen columns to keep to the left and right of the cursor
vim.opt.sidescrolloff = 5

-- avoid wrapping a line in the middle of a word.
vim.opt.linebreak = true

-- unsure
vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

