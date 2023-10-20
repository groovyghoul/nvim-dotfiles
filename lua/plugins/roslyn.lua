local on_attach = function(client, bufnr)
  vim.print("LSP attached...")
  -- show help in a floating window
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
  vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, { buffer = 0 })
  vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, { buffer = 0 })
  vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", { buffer = 0 })
  vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { buffer = 0 })
  vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { buffer = 0 })
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = 0 })
end

return {
  {
    "jmederosalvarado/roslyn.nvim",
    -- "maxle5/roslyn.nvim",
    event = "VeryLazy",
    config = function(_, opts)
      require("roslyn").setup({
        dotnet_cmd = "dotnet",
        -- dotnet_cmd = {
        --   "dotnet",
        --   "C:\\source\\github\\roslyn\\artifacts\\bin\\Microsoft.CodeAnalysis.LanguageServer\\Debug\\net7.0\\Microsoft.CodeAnalysis.LanguageServer.dll",
        --   "--logLevel=Information",
        --   "--extensionLogDirectory=c:\\temp\\",
        -- }, -- this is the default
        roslyn_version = "4.8.0-3.23475.7", -- this is the default
        on_attach = on_attach, -- required
        capabilities = opts.capabilities, -- required
      })
    end,
  },
}
