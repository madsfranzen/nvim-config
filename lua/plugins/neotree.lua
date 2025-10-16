vim.pack.add({
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
  { src = "https://github.com/MunifTanjim/nui.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

require("neo-tree").setup({
  enable_git_status = true,
  source_selector = {
    winbar = false,
    statusline = false,
  },
  window = {
    mappings = {
      ["l"] = "open", -- bind the `l` key to open files or folders
    },
  },
})
