-- Disable treesitter highlighting for files with merge conflicts
-- (workaround for nvim-treesitter nil node bug)
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, 0, 100, false)
    for _, line in ipairs(lines) do
      if line:match("^<<<<<<<") then
        vim.treesitter.stop(0)
        return
      end
    end
  end,
})
