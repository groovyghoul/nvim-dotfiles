-- if true then
--   return {}
-- end

-- return {
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--       style = "moon",
--     },
--   },
-- }

-- return {
--   {
--     "uloco/bluloco.nvim",
--     lazy = false,
--     priority = 1000,
--     dependencies = { "rktjmp/lush.nvim" },
--     config = function()
--       --vim.cmd("colorscheme bluloco-dark")
--     end,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "bluloco-dark",
--     },
--   },
-- }

-- return {
--   {
--     "uloco/bluloco.nvim",
--     dependencies = { "rktjmp/lush.nvim" },
--   },
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "bluloco-dark",
--     },
--   },
-- }

return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      overrides = {
        Normal = { bg = "#000000" },
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}

-- return {
--   {
--     "arturgoms/moonbow.nvim",
--     -- opts = {
--     --   overrides = {
--     --     Normal = { bg = "#000000" },
--     --   },
--     -- },
--   },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "moonbow",
--     },
--   },
-- }
