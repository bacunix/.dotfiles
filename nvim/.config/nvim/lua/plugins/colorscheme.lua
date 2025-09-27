-- return {
--  "blazkowolf/gruber-darker.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     vim.cmd("colorscheme gruber-darker")
--
--     require("gruber-darker").setup({
--         {
--             bold = true,
--             invert = {
--                 signs = false,
--                 tabline = false,
--                 visual = false,
--             },
--             italic = {
--                 strings = false,
--                 comments = true,
--                 operators = false,
--                 folds = true,
--             },
--             undercurl = true,
--             underline = true,
--         }
--     })
--
--   end,
-- }

-- return {
--     'joshdick/onedark.vim',
--     lazy = false,
--     priority = 1000,
--
--     config = function()
--         vim.cmd("colorscheme onedark")
--         vim.cmd("hi! Normal guibg=NONE ctermbg=NONE")
--         vim.cmd("hi! NonText guibg=NONE ctermbg=NONE")
--     end
-- }

-- return 
-- { "catppuccin/nvim", name = "catppuccin", priority = 1000,
--
--     config = function()
--         require("catppuccin").setup({
--             flavour = "auto", -- latte, frappe, macchiato, mocha
--             background = { -- :h background
--                 light = "latte",
--                 dark = "mocha",
--             },
--             transparent_background = true, -- disables setting the background color.
--             float = {
--                 transparent = true, -- enable transparent floating windows
--                 solid = false, -- use solid styling for floating windows, see |winborder|
--             },
--             show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--             term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
--             dim_inactive = {
--                 enabled = false, -- dims the background color of inactive window
--                 shade = "dark",
--                 percentage = 0.15, -- percentage of the shade to apply to the inactive window
--             },
--             no_italic = false, -- Force no italic
--             no_bold = false, -- Force no bold
--             no_underline = false, -- Force no underline
--             styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--                 comments = { "italic" }, -- Change the style of comments
--                 conditionals = { "italic" },
--                 loops = {},
--                 functions = {},
--                 keywords = {},
--                 strings = {},
--                 variables = {},
--                 numbers = {},
--                 booleans = {},
--                 properties = {},
--                 types = {},
--                 operators = {},
--                 -- miscs = {}, -- Uncomment to turn off hard-coded styles
--             },
--             color_overrides = {},
--             custom_highlights = {},
--             default_integrations = true,
--             auto_integrations = false,
--             integrations = {
--                 cmp = true,
--                 gitsigns = true,
--                 -- nvimtree = true,
--                 treesitter = true,
--                 notify = false,
--                 neotree = true,
--                 mini = {
--                     enabled = true,
--                     indentscope_color = "",
--                 },
--                 -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--             },
--         })
--
--         -- setup must be called before loading
--         vim.cmd.colorscheme "catppuccin"
--     end
-- }

return {
    "RRethy/base16-nvim",
    lazy = false,

    config = function()
        -- To disable highlights for supported plugin(s), call the `with_config` function **before** setting the colorscheme.
        -- These are the defaults.
        require('base16-colorscheme').with_config({
            telescope = true,
            indentblankline = true,
            notify = false,
            ts_rainbow = false,
            cmp = true,
            illuminate = true,
            dapui = true,
        })

        -- All builtin colorschemes can be accessed with |:colorscheme|.
        vim.cmd('colorscheme base16-black-metal-gorgoroth')
    end
}
