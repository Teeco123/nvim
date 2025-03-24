require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-d>", "<C-d>zz", { desc = "Move half screen up and set cursor center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Move half screen down and set cursor center" })
map("n", "n", "nzz")
map("n", "N", "Nzz")
map("n", "<Up>", "<Nop")
map("n", "<Left>", "<Nop")
map("n", "<Right>", "<Nop")
map("n", "<Down>", "<Nop")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
