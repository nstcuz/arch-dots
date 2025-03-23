return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,  -- This ensures that hidden files are shown
                    hide_dotfiles = false,  -- This ensures dotfiles are shown
                    hide_gitignored = true,  -- This keeps git-ignored files hidden
                    hide_by_name = {
                        -- Add any filenames you want to hide here
                        -- e.g., '.DS_Store', 'thumbs.db'
                    },
                    never_show = {
                        -- Add any filenames you want to never show, regardless of other settings
                    },
                },
            },
        })
        vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", {})
        vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
    end,
}
