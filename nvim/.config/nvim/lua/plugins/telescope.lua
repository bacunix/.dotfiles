-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },

      config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {desc = 'Telescope colorscheme'})

        require("telescope").setup({
            defaults = {
                border = {
                    prompt = { 1, 1, 1, 1 },
                    results = { 1, 1, 1, 1 },
                    preview = { 1, 1, 1, 1 },
                },
                borderchars = {
                    prompt = { " ", " ", "─", "│", "│", " ", "─", "└" },
                    results = { "─", " ", " ", "│", "┌", "─", " ", "│" },
                    preview = { "─", "│", "─", "│", "┬", "┐", "┘", "┴" },
                },

                pickers = {
                    colorscheme = {
                        enable_preview = true,
                    },
                    find_files = {
                        hidden = true,
                        find_command = {
                        "rg",
                        "--files",
                        "--glob",
                        "!{.git/*,.next/*,.svelte-kit/*,target/*,node_modules/*}",
                        "--path-separator",
                        "/",
                        },
                    },
                },
            }
        })
      end
}
