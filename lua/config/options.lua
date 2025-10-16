-- options
--------------------------------------------------------------------------------
-- General ====================================================================
vim.o.undofile = true
vim.o.swapfile = false

-- remove splash screen
vim.cmd("set shortmess+=I")

-- Enable all filetype plugins and syntax (if not enabled, for better startup)
vim.cmd('filetype plugin indent on')
if vim.fn.exists('syntax_on') ~= 1 then vim.cmd('syntax enable') end

-- UI =========================================================================
vim.o.breakindent    = true      -- Indent wrapped lines to match line start
vim.o.breakindentopt = 'list:-1' -- Add padding for lists (if 'wrap' is set)
vim.o.colorcolumn    = '+1'      -- Draw column on the right of maximum width
vim.o.cursorline     = false     -- Enable current line highlighting
vim.o.linebreak      = true      -- Wrap lines at 'breakat' (if 'wrap' is set)
vim.o.list           = true      -- Show helpful text indicators
vim.o.number         = true      -- Show line numbers
vim.o.relativenumber = true      -- Show relativenumber
vim.o.ruler          = true      -- Don't show cursor coordinates
vim.o.showmode       = true      -- Don't show mode in command line
vim.o.signcolumn     = 'yes'     -- Always show signcolumn (less flicker)
vim.o.winborder      = 'rounded' -- Use border in floating windows
vim.o.wrap           = true      -- Don't visually wrap lines (toggle with \w)
vim.opt.fillchars    = { eob = " " }
vim.o.scrolloff      = 10
vim.o.cmdheight      = 0
vim.opt.list = false
vim.opt.termguicolors = true

-- Editing ====================================================================
vim.o.autoindent     = true                  -- Use auto indent
vim.o.expandtab      = true                  -- Convert tabs to spaces
vim.o.formatoptions  = 'rqnl1j'              -- Improve comment editing
vim.o.ignorecase     = true                  -- Ignore case during search
vim.o.incsearch      = true                  -- Show search matches while typing
vim.o.infercase      = true                  -- Infer case in built-in completion
vim.o.shiftwidth     = 2                     -- Use this number of spaces for indentation
vim.o.smartcase      = true                  -- Respect case if search pattern has upper case
vim.o.smartindent    = true                  -- Make indenting smart
vim.o.spelloptions   = 'camel'               -- Treat camelCase word parts as separate words
vim.o.tabstop        = 4                     -- Show tab as this number of spaces
vim.o.virtualedit    = 'block'               -- Allow going past end of line in blockwise mode

vim.o.iskeyword      = '@,48-57,_,192-255,-' -- Treat dash as `word` textobject part

-- Pattern for a start of numbered list (used in `gw`). This reads as
-- "Start of list item is: at least one special character (digit, -, +, *)
-- possibly followed by punctuation (. or `)`) followed by at least one space".
vim.o.formatlistpat  = [[^\s*[0-9\-\+\*]\+[\.\)]*\s\+]]
