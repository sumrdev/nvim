require "nvchad.mappings"

-- add yours here
local wk = require "which-key"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>fs", ":Telescope lsp_dynamic_workspace_symbols<CR>", { desc = "Workspace Symbols" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
