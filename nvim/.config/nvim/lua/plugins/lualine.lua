return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "dracula",
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {
          {
            function()
              local filepath = vim.fn.expand('%:p')
              if filepath == '' then return '' end
              return vim.fn.fnamemodify(filepath, ':h:t')
            end,
            icon = '',  -- optional: folder icon if using Nerd Fonts
            --padding = { left = 1, right = 1 },
          },
          'filename'},
        --lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    })
  end,
}
