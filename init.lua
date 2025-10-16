require('config.globals')

require('plugins.vague')
require('plugins.treesitter')
require('plugins.telescope')
require('plugins.neotree')
require('plugins.blink')
require('plugins.harpoon')
require('plugins.lualine')
require('plugins.tiny-code-actions')

-- For C# Lsp to work we need to require it separately it seems.
-- Might refactor later - or not.
package.path = package.path .. ";" .. vim.fn.stdpath("config") .. "/lsp/?.lua"
require("csharp")

require('config.lsp')
require('config.autocmd')
require('config.options')
require('config.keymaps')
require('config.colorscheme')
