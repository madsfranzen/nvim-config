vim.pack.add({
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/letieu/harpoon-lualine" },
  { src = "https://github.com/ThePrimeagen/harpoon",         version = "harpoon2" },
})

local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>hj", function()
  harpoon:list():add()
end)

vim.keymap.set("n", "<leader>hh", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<leader>ha", function()
  harpoon:list():select(1)
end)

vim.keymap.set("n", "<leader>hs", function()
  harpoon:list():select(2)
end)

vim.keymap.set("n", "<leader>hd", function()
  harpoon:list():select(3)
end)

vim.keymap.set("n", "<leader>hf", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hp", function()
  harpoon:list():prev()
end)

vim.keymap.set("n", "<leader>hn", function()
  harpoon:list():next()
end)
