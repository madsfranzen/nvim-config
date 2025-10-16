package.path = package.path .. ";" .. vim.fn.stdpath("config") .. "/lsp/?.lua"

require('config.globals')

require('plugins.vague')
require('plugins.treesitter')
require('plugins.telescope')
require('plugins.neotree')
require('plugins.blink')
require('plugins.harpoon')
require('plugins.lualine')
require('plugins.tiny-code-actions')

require("lsp.csharp")

require('config.lsp')
require('config.autocmd')
require('config.options')
require('config.keymaps')
require('config.colorscheme')
