return {
  {
    "VonHeikemen/searchbox.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      require("searchbox").setup()
    end,
    keys = {
      {
        "\\s",
        "<cmd>SearchBoxIncSearch<CR>",
        desc = "Search (Search Box)",
      },
      {
        "\\sr",
        "<cmd>SearchBoxReplace<CR>",
        desc = "Search and Replace (Search Box)",
      },
    },
  },
}
