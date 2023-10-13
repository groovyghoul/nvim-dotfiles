return {
  {
    "hrsh7th/nvim-cmp",
    -- dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      local cmp = require("cmp")
      -- opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<C-e>"] = cmp.mapping.abort(),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = false }),
        }),
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })
    end,
  },
}
