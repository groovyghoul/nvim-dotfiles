return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top", width = 0.9 },
        sorting_strategy = "ascending",
        winblend = 0,
        color_devicons = true,
        file_ignore_patterns = {
          "obj",
          "bin",
          ".git",
          "node_modules",
        },
        prompt_prefix = "  ",
        selection_caret = " ",
      },
    },
  },
}
