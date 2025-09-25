return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself

    config = function()
        vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {silent = true})
    require("neo-tree").setup({
            close_if_last_window = true,
            window = {
                width = 30,
            },
            sources = { "filesystem", "buffers", "git_status" },
            buffers = {
                -- follow_current_file = true,
            },
            filesystem = {
                -- follow_current_file = true,
                filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_by_name = {
                    "node_modules"
                },
                -- never_show = {
                --     ".DS_Store",
                --     "thumbs.db"
                -- },
                },
            },

            default_component_configs = {
                indent = {
                    with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
                    expander_collapsed = "",
                    expander_expanded = "",
                    expander_highlight = "NeoTreeExpander",
                    },
                    git_status = {
                    symbols = {
                        unstaged = "󰄱",
                        staged = "󰱒",
                    },
                },
            },
        })
    end
  }
}

