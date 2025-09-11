-- return {
--   -- Mason (quản lý LSP servers)
--   {
--     "williamboman/mason.nvim",
--     config = function()
--       require("mason").setup()
--     end
--   },
--   {
--     "williamboman/mason-lspconfig.nvim",
--     config = function()
--       require("mason-lspconfig").setup({
--         ensure_installed = {},
--         automatic_installation = true,
--       })
--     end
--   },
--
--   -- LSP config
--   {
--     "neovim/nvim-lspconfig",
--     dependencies = {
--       "williamboman/mason.nvim",
--       "williamboman/mason-lspconfig.nvim",
--     },
--     config = function()
--       -- Keymaps cho LSP
--       local on_attach = function(client, bufnr)
--         local opts = { noremap = true, silent = true, buffer = bufnr }
--
--         vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
--         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--         vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--         vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--         vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
--         vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
--         vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
--         vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--         vim.keymap.set('n', '<space>f', function()
--         vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
--         vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
--         vim.keymap.set('n', '<space>qd', vim.diagnostic.setloclist, opts)
--           vim.lsp.buf.format({ async = true })
--         end, opts)
--       end
--
--       -- Thiết lập LSP servers
--       local lspconfig = require("lspconfig")
--       local capabilities = require("cmp_nvim_lsp").default_capabilities()
--
--       local servers = {"clangd"}
--       for _, server in ipairs(servers) do
--         lspconfig[server].setup({
--           on_attach = on_attach,
--           capabilities = capabilities,
--         })
--       end
--     end
--   },
--     -- completion
-- -- Completion engine
-- {
--   "hrsh7th/nvim-cmp",
--   event = "InsertEnter",
--   dependencies = {
--     "hrsh7th/cmp-nvim-lsp",
--     "hrsh7th/cmp-buffer",
--     "hrsh7th/cmp-path",
--     "L3MON4D3/LuaSnip",
--     "saadparwaiz1/cmp_luasnip",
--   },
--   config = function()
--     local cmp = require("cmp")
--     local luasnip = require("luasnip")
--
--     cmp.setup({
--       snippet = {
--         expand = function(args)
--           luasnip.lsp_expand(args.body)
--         end,
--       },
--       mapping = cmp.mapping.preset.insert({
--         ["<C-b>"] = cmp.mapping.scroll_docs(-4),
--         ["<C-f>"] = cmp.mapping.scroll_docs(4),
--         ["<C-Space>"] = cmp.mapping.complete(),
--         ["<C-e>"] = cmp.mapping.abort(),
--         ["<CR>"] = cmp.mapping.confirm({ 
--           select = true,
--           behavior = cmp.ConfirmBehavior.Replace
--         }),
--         ['<Tab>'] = cmp.mapping(function(fallback)
--           if cmp.visible() then
--             cmp.select_next_item()
--           -- elseif luasnip.expand_or_jumpable() then
--           --   luasnip.expand_or_jump()
--           else
--             fallback()
--           end
--         end, { 'i', 's' }),
--         ['<S-Tab>'] = cmp.mapping(function(fallback)
--           if cmp.visible() then
--             cmp.select_prev_item()
--           -- elseif luasnip.jumpable(-1) then
--           --   luasnip.jump(-1)
--           else
--             fallback()
--           end
--         end, { 'i', 's' }),      }),
--       sources = cmp.config.sources({
--         { name = "nvim_lsp" },
--         { name = "luasnip" },
--         { name = "buffer" },
--         { name = "path" },
--       }),
--     })
--   end
-- },
--
--   -- Snippets engine
--   {
--     "L3MON4D3/LuaSnip",
--     dependencies = {
--       "saadparwaiz1/cmp_luasnip",
--     },
--     config = function()
--       require("luasnip.loaders.from_vscode").lazy_load()
--     end
--   }
-- }


return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",
    },
    lazy = false,
    config = function()
        require("cmp").setup({
            sources = {
                { name = "buffer" },
            },
            mapping = {
                ['<Tab>'] = function(fallback)
                    if require("cmp").visible() then
                        require("cmp").select_next_item()
                    else
                        fallback()
                    end
                end,
                ['<S-Tab>'] = function(fallback)
                    if require("cmp").visible() then
                        require("cmp").select_prev_item()
                    else
                        fallback()
                    end
                end,
                ['<CR>'] = require("cmp").mapping.confirm({ select = true }),
            }
        })
    end
}
