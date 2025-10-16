-- LSP SERVERS
vim.lsp.enable({
  "luals",
  "gopls",
  "csharp",
  "vtsls",
})

-- Diagnostics
vim.diagnostic.config({
  signs = { priority = 9999 },
  virtual_lines = false,
  virtual_text = true,
  update_in_insert = false,
})
