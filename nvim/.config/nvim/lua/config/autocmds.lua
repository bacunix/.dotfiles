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

