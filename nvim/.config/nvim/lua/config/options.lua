vim.cmd("syntax on")
vim.opt.clipboard = "unnamedplus"  -- Sync with system clipboard
vim.opt.confirm = true             -- Confirm to save changes before exiting modified buffer
vim.opt.cursorline = false          -- Enable highlighting of the current line
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.ignorecase = true          -- Ignore case
-- vim.opt.list = true                -- Show some invisible characters (tabs...
-- vim.opt.statuscolumn = "%s %l %r "
-- vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
-- vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ead84e" })
vim.opt.signcolumn = "number"
-- vim.cmd("set cmdheight=0")
vim.opt.mouse = "a"                -- Enable mouse mode
vim.opt.number = true              -- Print line number
vim.opt.relativenumber = true      -- Relative line numbers
vim.opt.shiftround = true          -- Round indent
vim.opt.shiftwidth = 4             -- Size of an indent
vim.opt.smartcase = true           -- Don't ignore case with capitals
vim.opt.smartindent = true         -- Insert indents automatically
vim.opt.splitbelow = true          -- Put new windows below current
vim.opt.splitright = true          -- Put new windows right of current
vim.opt.tabstop = 4               -- Number of spaces tabs count for
vim.opt.termguicolors = false       -- True color support
vim.opt.wrap = false               -- Disable line wrap
vim.opt.guicursor = "i:block"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.laststatus = 0
vim.g.netrw_banner = 0

--change number column color
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "#1f1f1f"}) 
-- vim.opt.showtabline = 4
-- vim.opt.shell = "nu"
-- vim.opt.guifont="Hack Nerd Font:11"
-- Mapping để refresh view
vim.api.nvim_set_keymap('n', '<leader>r', ':e!<CR>', {noremap = true, silent = true})

-- vim.cmd("set timeoutlen=300")
vim.cmd("set timeoutlen=500")
vim.cmd("set updatetime=300")
-- vim.cmd("set ttimeoutlen=50")
-- vim.opt.updatetime = 100 

-- vim.cmd("set ttyfast")

