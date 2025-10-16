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

-- Remember and restore cursor position when opening/closing files
local autocmd = vim.api.nvim_create_autocmd
autocmd('BufReadPost', {
  group = augroup,
  callback = function()
    local exclude = { 'gitcommit' }
    local buf = vim.api.nvim_get_current_buf()
    if vim.tbl_contains(exclude, vim.bo[buf].filetype) then return end

    local mark = vim.api.nvim_buf_get_mark(buf, '"')
    local line_count = vim.api.nvim_buf_line_count(buf)
    if mark[1] > 0 and mark[1] <= line_count then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
      vim.api.nvim_feedkeys('zvzz', 'n', true)
    end
  end,
  desc = 'Restore cursor position after reopening file',
})
