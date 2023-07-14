-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.cmd([[
    set shell=pwsh
    set shellcmdflag=-command
    set shellquote=\"
    set shellxquote=
  ]])
end

-- https://vi.stackexchange.com/questions/7258/how-do-i-prevent-vim-from-hiding-symbols-in-markdown-and-json
-- do not render markdown preview
vim.cmd([[set conceallevel=0]])

vim.diagnostic.config({
  float = { border = "rounded" },
})
-- Disable virtual_text since it's redundant due to lsp_lines.
-- vim.diagnostic.config({ virtual_text = false })

-- place this after colorscheme is set
local hl_groups = { "DiagnosticUnderlineError" }
for _, hl in ipairs(hl_groups) do
  vim.cmd.highlight(hl .. " gui=undercurl")
end
