return {
  {
    "ErichDonGubler/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>lu",
        function() local new_value = not vim.diagnostic.config().virtual_lines vim.diagnostic.config({ virtual_lines = new_value, virtual_text = not new_value }) end,
        desc = "Toggle Underline Diagnostics",
      },
    },
  },
}
