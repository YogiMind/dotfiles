return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
    require("neo-tree").setup({
      window = {
        width = "15%"
      },
      -- You can add other configuration here
    })
		vim.keymap.set("n", "<leader>fi", ":Neotree filesystem reveal toggle<CR>", {})
	end,
}
