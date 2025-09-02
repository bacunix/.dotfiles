return {
 "blazkowolf/gruber-darker.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    vim.cmd("colorscheme gruber-darker")

    require("gruber-darker").setup({
        {
            bold = true,
            invert = {
                signs = false,
                tabline = false,
                visual = false,
            },
            italic = {
                strings = false,
                comments = true,
                operators = false,
                folds = true,
            },
            undercurl = true,
            underline = true,
        }
    })
  end,
}
