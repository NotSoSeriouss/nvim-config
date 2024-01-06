vim = vim or {}

-- General
vim.keymap.set("n", "<leader>f", "gg=G")
vim.keymap.set("n", "+", "<C-d>zz")
vim.keymap.set("n", "-", "<C-u>zz")

-- Windows
vim.keymap.set("n", "ww", "<C-w>w")
vim.keymap.set("n", "wp", "<C-w>p")
vim.keymap.set("n", "w<Down>", "<C-w>s<C-w>w")
vim.keymap.set("n", "w<Right>", "<C-w>v<C-w>w")
vim.keymap.set("n", "wt", "<C-w>s<C-w>w:term<Enter>")
vim.keymap.set("n", "wq", "<cmd>q<cr>")
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { silent = true })

-- Lazy
vim.keymap.set("n", "<leader>lh", "<cmd>Lazy home<cr>")
vim.keymap.set("n", "<leader>li", "<cmd>Lazy install<cr>")
vim.keymap.set("n", "<leader>lu", "<cmd>Lazy update<cr>")
vim.keymap.set("n", "<leader>lc", "<cmd>Lazy clean<cr>")

-- Telescope
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>ps", function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) end)
vim.keymap.set("n", "<leader>*", "<cmd>Telescope grep_string<cr>")

-- Codeium
vim.keymap.set("i", "<S-Right>", function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })

-- NvimTree
vim.keymap.set("n", "<leader><Tab>", require"nvim-tree.api".tree.toggle)
