return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup({
        highlight = {
          enable = true,
        },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-I>",
            node_incremental = "<C-I>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
  },
}
