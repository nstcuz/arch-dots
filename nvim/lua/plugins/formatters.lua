return {
  "vim-test/vim-test",
  ft = { "lua", "html", "markdown", "css", "javascript", "typescript", "json" },
  config = function()
    vim.api.nvim_create_user_command("FormatPrettier", function()
      local file = vim.fn.expand("%")
      local cmd = "prettier --write " .. file
      vim.cmd("silent ! " .. cmd)
      vim.cmd("edit") -- reload file after formatting
    end, {})

    -- autoformat on save
    vim.api.nvim_create_autocmd("BufWritePost", {
      pattern = { "*.lua", "*.js", "*.ts", "*.html", "*.css", "*.json", "*.md" },
      callback = function()
        vim.cmd("FormatPrettier")
      end,
    })
  end,
}

