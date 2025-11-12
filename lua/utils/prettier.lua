local M = {}

M.format_file = function()
    local bufnr = 0
    local file = vim.api.nvim_buf_get_name(bufnr)

    -- Save buffer first
    vim.api.nvim_buf_call(bufnr, function()
        vim.cmd("write")
    end)

    -- Run Prettier asynchronously
    vim.fn.jobstart({ "npx", "prettier", "--write", file }, {
        on_exit = function()
            vim.schedule(function()
                vim.api.nvim_buf_call(bufnr, function()
                    vim.cmd("edit")
                end)
            end)
        end,
    })
end

return M
