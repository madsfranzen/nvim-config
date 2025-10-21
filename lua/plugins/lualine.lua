local function get_harpoon_filename(entry)
  return vim.fn.fnamemodify(entry.value, ":t:r")
end

-- local function get_harpoon_filenameCAPS(entry)
-- 	local filename = vim.fn.fnamemodify(entry.value, ":t:r") -- strip path and extension
-- 	return filename:upper()
-- endb

vim.pack.add({
  { src = "https://github.com/nvim-lualine/lualine.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

local custom_vague = require("lualine.themes.vague")
-- Change the background of lualine_c section for normal mode
-- custom_vague.normal.b.bg = "#141415"
custom_vague.normal.c.bg = "#141415"

require("lualine").setup({
  options = {
    -- section_separators = "",
    component_separators = "",
    theme = custom_vague,
    globalstatus = false,
    disabled_filetypes = {
      statusline = { "neo-tree" }, -- Disable lualine in NeoTree's statusline
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = {
      "%=", -- make the indicator center{
      {
        "harpoon2",
        icon = " ",

        indicators = {
          function(entry)
            return "" .. get_harpoon_filename(entry)
          end,
          function(entry)
            return "  " .. get_harpoon_filename(entry)
          end,
          function(entry)
            return "  " .. get_harpoon_filename(entry)
          end,
          function(entry)
            return "  " .. get_harpoon_filename(entry)
          end,
        },
        active_indicators = {
          function(entry)
            return "" .. get_harpoon_filename(entry)
          end,
          function(entry)
            return "  " .. get_harpoon_filename(entry)
          end,
          function(entry)
            return "  " .. get_harpoon_filename(entry)
          end,
          function(entry)
            return "  " .. get_harpoon_filename(entry)
          end,
          -- get_harpoon_filenameCAPS,
          -- get_harpoon_filenameCAPS,
          -- get_harpoon_filenameCAPS,
          -- get_harpoon_filenameCAPS,
        },
        color_active = { fg = "#92e6f4" },
        separator = " | ",
        no_harpoon = "Harpoon not loaded",
      },
    },
    lualine_x = { {  } },
    lualine_y = { "filename" },
    lualine_z = { },
  },
})
