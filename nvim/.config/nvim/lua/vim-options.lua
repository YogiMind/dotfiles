vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set hidden")


------------------------------------------------------------
------------------------- Keymaps --------------------------
------------------------------------------------------------
local map = vim.keymap.set

vim.g.mapleader = " "

-- Normal mode: Make <leader>y work just like y but copy to clipboard
map('n', '<leader>y', '"+y', { silent = true })
map('n', '<leader>Y', '"+Y', { silent = true })

-- Visual mode: Make <leader>y work just like y but copy to clipboard
map('v', '<leader>y', '"+y', { silent = true })

-- Normal mode: Paste from clipboard
map('n', '<leader>p', '"+p', { silent = true })
map('n', '<leader>P', '"+P', { silent = true })

-- Visual mode: Paste from clipboard
map('v', '<leader>p', '"+p', { silent = true })
map('v', '<leader>P', '"+P', { silent = true })

-- Normal mode: Delete to void register
map('n', '<leader>d', '"_d', { silent = true })
map('n', '<leader>D', '"_D', { silent = true })

-- Visual mode: Delete to void register
map('v', '<leader>d', '"_d', { silent = true })

-- Normal mode: Remove highlighting after search
map('n', '<leader><Esc>', ':nohlsearch<CR>', { silent = true })

-- Normal mode: Open Markdown preview
map('n', '<leader>m', ':MarkdownPreview<CR>', {})

-- Open Oil
map('n', '-', ':Oil<CR>', {})

-- Open previous file
vim.api.nvim_set_keymap('n', '<BS>', '<C-^>', { noremap = true, silent = true })

-- Resize current window with Ctrl + Arrow-keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Change buffer with shift + h or l
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

------------------------------------------------------------
------------------------- Styling --------------------------
------------------------------------------------------------

vim.diagnostic.config({
  float = { border = "rounded" }
})

