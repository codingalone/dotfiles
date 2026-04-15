require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "lua_ls", "ts_ls", "ruby_lsp", "angularls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
