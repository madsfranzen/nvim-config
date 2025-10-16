vim.pack.add({
    { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

require("neo-tree").setup({
    close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
    popup_border_style = "",     -- or "" to use 'winborder' on Neovim v0.11+
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
    default_component_configs = {
        name = {
            use_git_status_colors = false,
        }
    }
})
