local omnisharp_cmd = { "Omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) }

-- Detect the root directory for C# projects
local function get_root_dir(fname)
  local root_files = { "*.sln", "*.csproj" }
  local found = vim.fs.find(root_files, { upward = true, path = vim.fs.dirname(fname) })
  return found[1] and vim.fs.dirname(found[1]) or nil
end

-- Autocommand: attach LSP to .cs files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  callback = function()
    local fname = vim.api.nvim_buf_get_name(0)
    local root = get_root_dir(fname)

    -- if not root then
    --   vim.notify("No C# root found (.sln or .csproj). OmniSharp may not work fully.", vim.log.levels.WARN)
    -- end

    -- -- Avoid duplicate clients (updated for Neovim 0.11+)
    -- for _, client in pairs(vim.lsp.get_clients()) do
    --   if client.name == "omnisharp" then
    --     return
    --   end
    -- end

    vim.lsp.start({
      name = "omnisharp",
      cmd = omnisharp_cmd,
      root_dir = root,
      filetypes = { "cs" },
      init_options = {
        RoslynExtensionsOptions = {
          enableAnalyzersSupport = true,
          enableDecompilationSupport = true,
          organizeImportsOnFormat = true,
          renameRefactoring = true,
        },
      },
      handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(
          vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = true,
            signs = true,
            update_in_insert = true,
          }
        ),
      },
    })
  end,
})
