vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove("c")
    vim.opt_local.formatoptions:remove("r")
    vim.opt_local.formatoptions:remove("o")
  end
})

-- auto enable Explore when not open file
-- vim.api.nvim_create_autocmd("VimEnter", {
-- pattern = "*",
-- callback = function()
--     if vim.fn.argv(0) == "" then
--     vim.cmd("Ex")
--     end
-- end
-- })

vim.api.nvim_create_autocmd("ModeChanged", {
  pattern = "*",
  callback = function()
    local mode = vim.api.nvim_get_mode().mode
    if mode == "v" or mode == "V" or mode == "CTRL-V" then
      -- Set background color for Visual mode
      vim.cmd("highlight Visual guibg=#9b8d7f guifg=#181818") -- Example: Dark grey
    else
      -- Revert to default background color for other modes
      vim.cmd("highlight Visual guibg=NONE") -- Revert Visual highlight
    end
  end,
})
