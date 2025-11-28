return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "clangd",
        },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- vim.lsp.config("lua_ls", {
      --   capabilities = capabilities
      -- })
      -- vim.lsp.enable("lua_ls")
      --
      -- vim.lsp.config("pyright", {
      --   capabilities = capabilities
      -- })
      -- vim.lsp.enable("pyright")
      --
      -- vim.lsp.config("clangd", {
      --   capabilities = capabilities
      -- })
      -- vim.lsp.enable("clangd")

      -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 'rounded' })
      vim.keymap.set('n', 'K', function()
        vim.lsp.buf.hover({
          border = 'single',
        })
      end)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>i', vim.diagnostic.open_float, {})
    end
  }
}
