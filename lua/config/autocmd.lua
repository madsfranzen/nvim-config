-- autocmd
--------------------------------------------------------------------------------

-- Create a dedicated augroup for our autocmds
local augroup = vim.api.nvim_create_augroup("user-autocmds", { clear = true })

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = augroup,
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Fix formatoptions on all filetypes
vim.api.nvim_create_autocmd("FileType", {
  desc = "Proper 'formatoptions'",
  group = augroup,
  callback = function()
    -- Remove 'c' and 'o' from formatoptions locally
    vim.opt_local.formatoptions:remove({ "c", "o" })
  end,
})
