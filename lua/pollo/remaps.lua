-- General
vim.keymap.set("n", "<leader>f", "gg^VG=")
vim.keymap.set("n", "-", ":-")
vim.keymap.set("n", "+", ":+")

-- Lazy
vim.keymap.set("n", "<leader>lh", "<cmd>Lazy home<cr>")
vim.keymap.set("n", "<leader>li", "<cmd>Lazy install<cr>")
vim.keymap.set("n", "<leader>lu", "<cmd>Lazy update<cr>")
vim.keymap.set("n", "<leader>lc", "<cmd>Lazy clean<cr>")

-- Telescope
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>pg", "<cmd>Telescope grep_string<cr>")

-- Codeium
vim.keymap.set("i", "<S-Right>", function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })

-- NvimTree
vim.keymap.set("n", "<leader><Tab>", require"nvim-tree.api".tree.toggle)
