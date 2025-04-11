return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require("oil")
    oil.setup({
      default_file_explorer = true,
    })
    vim.keymap.set("n", "-", require("oil").toggle_float, { desc = "Open Oil (float)" })
    vim.keymap.set("n", "<leader>-", ":Oil<CR>", { desc = "Open Oil in current window" })
  end,
}
