vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set hidden")

vim.g.mapleader = " "

-- Normal mode: Make <leader>y work just like y but copy to clipboard
vim.keymap.set('n', '<leader>y', '"+y', { silent = true })
vim.keymap.set('n', '<leader>Y', '"+Y', { silent = true })

-- Visual mode: Make <leader>y work just like y but copy to clipboard
vim.keymap.set('v', '<leader>y', '"+y', { silent = true })

-- Normal mode: Paste from clipboard
vim.keymap.set('n', '<leader>p', '"+p', { silent = true })
vim.keymap.set('n', '<leader>P', '"+P', { silent = true })

-- Visual mode: Paste from clipboard
vim.keymap.set('v', '<leader>p', '"+p', { silent = true })
vim.keymap.set('v', '<leader>P', '"+P', { silent = true })

-- Normal mode: Delete to void register
vim.keymap.set('n', '<leader>d', '"_d', { silent = true })
vim.keymap.set('n', '<leader>D', '"_D', { silent = true })

-- Visual mode: Delete to void register
vim.keymap.set('v', '<leader>d', '"_d', { silent = true })


vim.diagnostic.config({
  float = { border = "rounded" }
})

