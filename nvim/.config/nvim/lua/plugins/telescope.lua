return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
  builtin = function()
    local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  end

--vim.keymap.set('n', '<hmm>', builtin.find_files, {})

}
