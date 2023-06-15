return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        csharp_ls = {},
      },
      -- you can do any additional lsp server setup here
      -- return true if you don't want this server to be setup with lspconfig
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
      setup = {
        -- example to setup with typescript.nvim
        csharp_ls = function(_, opts)
          -- require("csharp_ls").setup({ server = opts })
          require("lspconfig").csharp_ls.setup({
            root_dir = require("lspconfig.util").root_pattern("*.sln", ".git", "*.csproj"),
          })
          return true
        end,
        -- Specify * to use this function as a fallback for any server
        -- ["*"] = function(server, opts) end,
      },
      diagnostics = {
        -- this makes the "inline diagnostics" no longer appear beside the line (also see options.lua). Using lsp-lines now, instead
        -- virtual_text = false,
        virtual_text = true,
        virtual_lines = false,
      },
    },
  },
}
