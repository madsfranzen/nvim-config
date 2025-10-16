vim.pack.add({
  { src = "https://github.com/rafamadriz/friendly-snippets" },
  { src = "https://github.com/L3MON4D3/LuaSnip" },
  { src = "https://github.com/xzbdmw/colorful-menu.nvim" },
  { src = "https://github.com/Saghen/blink.cmp" },
})
-- Enable Blink Completion
vim.lsp.config(
  "*",
  {
    capabilities = require("blink.cmp").get_lsp_capabilities(vim.lsp.protocol.make_client_capabilities()),
    root_markers = { ".git" },
  }
)

require("blink.cmp").setup({
  fuzzy = {
    implementation = "lua",
  },
  signature = { enabled = true },
  keymap = {
    preset = "super-tab",
    ["<C-k>"] = { "select_prev", "fallback" },
    ["<C-j>"] = { "select_next", "fallback" },
  },
  completion = {
    documentation = { auto_show = true, auto_show_delay_ms = 500 },
    menu = {
      auto_show = true,
      draw = {
        -- columns = { { "kind_icon" }, { "label", "label_description", "kind", gap = 1 } },
        columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind", gap = 1 } },

        -- columns = { { "kind_icon" }, { "label", "label_description", gap = 1 } },
        treesitter = { "lsp" },
        components = {
          label = {
            text = require("colorful-menu").blink_components_text,
            highlight = require("colorful-menu").blink_components_highlight,
          },
        },
      }
    }
  }
})
require("luasnip.loaders.from_vscode").lazy_load()
