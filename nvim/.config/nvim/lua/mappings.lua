require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local nomap = vim.keymap.del
nomap("n", "<leader>n")
nomap("n", "<leader>wK")
nomap("n", "<leader>wk")
nomap("n", "<leader>/")
nomap("v", "<leader>/")

map("n", "<leader>n", "<cmd>enew<cr>", { desc = "New buffer" })
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<leader>?", "<cmd>WhichKey<cr>", { desc = "WhichKey all keymaps" })
