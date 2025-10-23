-- LSP SERVERS
vim.lsp.enable({
  "luals",
  "gopls",
  "csharp",
})

-- Diagnostics
vim.diagnostic.config({
  signs = { priority = 9999 },
  virtual_lines = true,
  virtual_text = false,
  update_in_insert = false,
})
