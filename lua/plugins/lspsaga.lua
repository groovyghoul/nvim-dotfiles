return {
  {
    "glepnir/lspsaga.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    enabled = false,
    -- keymappings to add
    -- require("dapui").toggle(1)   --> this will toggle the left
    -- require("dapui").toggle(2)   --> this will toggle the bottom
    event = "BufRead",
    keys = {
      {
        "<leader>sb",
        "<cmd>Lspsaga show_buf_diagnostics<CR>",
        desc = "Show buffer diagnostics (Lspsaga)",
      },
      {
        "<leader>cc",
        "<cmd>Lspsaga code_action<CR>",
        desc = "Code actions (Lspsaga)",
      },
      {
        "K",
        "<cmd>Lspsaga hover_doc<CR>",
        desc = "Hover docs (Lspsaga)",
      },
      -- {
      --   "<F9>",
      --   function()
      --     require("dap").toggle_breakpoint()
      --   end,
      --   desc = "Toggle breakpoint (DAP)",
      -- },
      -- {
      --   "<F10>",
      --   function()
      --     require("dap").step_over()
      --   end,
      --   desc = "Step over (DAP)",
      -- },
      -- {
      --   "<F11>",
      --   function()
      --     require("dap").step_into()
      --   end,
      --   desc = "Step into (DAP)",
      -- },
      -- {
      --   "<leader>wt",
      --   function()
      --     require("dapui").eval()
      --   end,
      --   desc = "Evaluate element under cursor (DAP)",
      -- },
    },
    config = function(_, opts)
      require("lspsaga").setup({})
    end,
  },
}
