return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "bashls",
          "lua_ls",
          "marksman",
          "html",
          "cssls",
          "tailwindcss",
          "ts_ls",
          "phpactor"
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.solargraph.setup({})
      lspconfig.bashls.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.html.setup({})
      lspconfig.emmet_ls.setup({
        filetypes = {
          "html", "css", "scss", "javascript", "javascriptreact", "typescriptreact"
        },
      })
      lspconfig.cssls.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.phpactor.setup({})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
