-- General
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Rex)

-- Lazy
vim.keymap.set("n", "<leader>lh", "<cmd>Lazy home<cr>")
vim.keymap.set("n", "<leader>li", "<cmd>Lazy install<cr>")
vim.keymap.set("n", "<leader>lu", "<cmd>Lazy update<cr>")
vim.keymap.set("n", "<leader>lc", "<cmd>Lazy clean<cr>")

-- Telescope
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>pg", "<cmd>Telescope grep_string<cr>")

