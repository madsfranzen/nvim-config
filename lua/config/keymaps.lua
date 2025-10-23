-- keymap
--------------------------------------------------------------------------------

-- Global keymaps
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>s', ':wa<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Show diagnostics in float' })
-- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, { noremap = true, silent = true, desc = "LSP hover" })
vim.keymap.set("n", "J", "10j", { noremap = true, silent = true })
vim.keymap.set("n", "K", "10k", { noremap = true, silent = true })

-- Copy/Paste via system clipboard
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>p', '"+p<CR>')

-- Neotree
vim.keymap.set('n', '<leader>e', ':Neotree toggle float<CR>')

-- Telescope Keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader><leader>', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)

vim.keymap.set({ "n", "x" }, "<leader>ca", function()
	require("tiny-code-action").code_action()
end, { noremap = true, silent = true })
