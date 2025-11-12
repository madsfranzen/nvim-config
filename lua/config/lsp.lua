-- LSP SERVERS
vim.lsp.enable({
  "luals",
  "gopls",
  "csharp",
})

-- Diagnostics - disabled, using inline-diagnostics plugin instead
vim.diagnostic.config({
  signs = { priority = 9999 },
  virtual_lines = false,
  virtual_text = false,
  update_in_insert = false,
})
