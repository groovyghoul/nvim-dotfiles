-- local configs = require('lspconfig.configs')
-- local lspconfig = require('lspconfig')
-- if not configs.golangcilsp then
--   configs.golangcilsp = {
--     default_config = {
--       cmd = { 'golangci-lint-langserver' },
--       root_dir = lspconfig.util.root_pattern('.git', 'go.mod'),
--       filetypes = { 'go' },
--       init_options = {
--         command = { 'golangci-lint', 'run', '--fast', '--out-format', 'json' },
--       },
--     },
--   }
-- end
-- lspconfig.golangcilsp.setup{}

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Remove the old csharp_ls server setup
        csharp_ls = {},
        volar = {},

        -- Add the setup for the new vscode-csharp server
        -- vscode_csharp = {
        --   mason = false,
        --   -- require("lspconfig").roslyn.setup({
        --   --   on_attach = on_attach,
        --   -- }),
        -- },
      },
      setup = {
        -- Remove the old csharp_ls setup function
        csharp_ls = function(_, opts)
          require("lspconfig").csharp_ls.setup({
            root_dir = require("lspconfig.util").root_pattern("*.sln", ".git", "*.csproj"),
            handlers = handlers,
          })
          return true
        end,
        volar = function(_, opts)
          require("lspconfig").volar.setup({
            filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
            init_options = {
              preferences = {
                disableSuggestions = true,
              },
              languageFeatures = {
                implementation = true,
                references = true,
                definition = true,
                typeDefinition = true,
                callHierarchy = true,
                hover = true,
                rename = true,
                renameFileRefactoring = true,
                signatureHelp = true,
                codeAction = true,
                diagnostics = true,
              },
              -- typescript = {
              -- tsdk = '/Users/ilias/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib',
              -- tsdk = '/Users/ilias/.local/share/nvim/mason/packages/vue-language-server/node_modules/typescript/lib',
              -- tsdk = '',
              -- },
            },
            on_attach = opts.on_attach,
            capabilities = opts.capabilities,
            -- root_dir = require("lspconfig").util.root_pattern("app.js"),
          })
          return true
        end,

        -- Add the setup for the vscode_csharp server
        -- vscode_csharp = function(_, opts)
        --   -- MAX'S VERSION
        --   -- local lsp_configurations = require("lspconfig.configs")
        --   -- if not lsp_configurations.roslyn then
        --   --   lsp_configurations.roslyn = {
        --   --     default_config = {
        --   --       name = "roslyn",
        --   --       cmd = {
        --   --         "dotnet",
        --   --         "C:\\Users\\richard\\.vscode\\extensions\\ms-dotnettools.csharp-2.0.346-win32-x64\\.roslyn\\Microsoft.CodeAnalysis.LanguageServer.exe",
        --   --         "--logLevel=Information",
        --   --         -- "--starredCompletionComponentPath=C:\\Users\\max.GA\\.vscode\\extensions\\ms-dotnettools.vscodeintellicode-csharp-0.1.26-win32-x64\\components\\starred-suggestions\\node_modules\\@vsintellicode\\starred-suggestions-csharp",
        --   --         -- "--extension=C:\\Users\\max.GA\\.vscode\\extensions\\ms-dotnettools.csdevkit-0.3.21-win32-x64\\components\\roslyn-visualstudio-languageservices-devkit\\node_modules\\@microsoft\\visualstudio-languageservices-devkit\\Microsoft.VisualStudio.LanguageServices.DevKit.dll",
        --   --         -- "--sessionId=af60e874-a2e7-41d4-8854-b6e1646b9f601686121999271",
        --   --         -- "--telemetryLevel=all",
        --   --         "--extensionLogDirectory=c:\\temp\\",
        --   --       },
        --   --       filetypes = { "cs" },
        --   --       root_dir = require("lspconfig.util").root_pattern("*.sln", ".git", "*.csproj"),
        --   --     },
        --   --   }
        --   -- end
        --
        --   -- RICHARD'S VERSION
        --   require("lspconfig").vscode_csharp.setup({
        --     cmd = {
        --       "C:\\Users\\richard\\.vscode\\extensions\\ms-dotnettools.csharp-2.0.312-win32-x64\\.roslyn\\Microsoft.CodeAnalysis.LanguageServer.exe",
        --       "--logLevel",
        --       "Information",
        --       "--extensionLogDirectory",
        --       "c:\\temp",
        --     },
        --     root_dir = require("lspconfig.util").root_pattern("*.sln", ".git", "*.csproj"),
        --   })
        --   return true
        -- end,
      },
      diagnostics = {
        virtual_text = false,
        virtual_lines = false,
        float = { border = border },
      },
      handlers = {
        ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
        ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
      },
      border = {
        { "┌", "FloatBorder" },
        { "─", "FloatBorder" },
        { "┐", "FloatBorder" },
        { "│", "FloatBorder" },
        { "┘", "FloatBorder" },
        { "─", "FloatBorder" },
        { "└", "FloatBorder" },
        { "│", "FloatBorder" },
      },
    },
  },
}
