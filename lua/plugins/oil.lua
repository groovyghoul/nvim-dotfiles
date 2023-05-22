return {
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        mode = "n",
        "-",
        function()
          require("oil").open()
        end,
        desc = "Open up Oil",
      },
    },
  },
}
