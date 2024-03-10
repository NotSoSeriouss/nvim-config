---@diagnostic disable-next-line
vim = vim or {}

-- General
vim.keymap.set("n", "<leader>f", "magg0=G`azz")
vim.keymap.set("n", "<leader>7", "<cmd>noh<cr>")
vim.keymap.set("n", "+", "<C-d>zz")
vim.keymap.set("n", "-", "<C-u>zz")
vim.keymap.set("n", "<leader>s", "<cmd>wa<cr><cmd>qa<cr>")

-- Windows
vim.keymap.set("n", "<leader>ww", "<C-w>w")
vim.keymap.set("n", "<leader>wp", "<C-w>W")
vim.keymap.set("n", "<leader>wj", "<C-w>s<C-w>w")
vim.keymap.set("n", "<leader>wl", "<C-w>v<C-w>w")
vim.keymap.set("n", "<leader>wq", "<cmd>q<cr>")

-- Terminal
vim.keymap.set("n", "<leader>wt", "<cmd>ToggleTerm direction=horizontal<cr>a")
vim.keymap.set("n", "<leader>wf", "<Cmd>ToggleTerm direction=float<CR>a")
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { silent = true })

-- Lazy
vim.keymap.set("n", "<leader>lh", "<cmd>Lazy home<cr>")
vim.keymap.set("n", "<leader>li", "<cmd>Lazy install<cr>")
vim.keymap.set("n", "<leader>lu", "<cmd>Lazy update<cr>")
vim.keymap.set("n", "<leader>lc", "<cmd>Lazy clean<cr>")

-- Trouble
vim.keymap.set("n", "<leader>pt", "<cmd>TroubleToggle<cr>")

-- Telescope
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>ps", function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) end)
vim.keymap.set("n", "<leader>*", "<cmd>Telescope grep_string<cr>")

-- NvimTree
vim.keymap.set("n", "<leader><Tab>", require"nvim-tree.api".tree.toggle)

-- Harpoon
vim.keymap.set("n", "<leader>ha", require"harpoon.mark".add_file)
vim.keymap.set("n", "<leader>hs", require"harpoon.ui".toggle_quick_menu)
vim.keymap.set("n", "<leader>hg", require"harpoon.ui".nav_prev)
vim.keymap.set("n", "<leader>hj", require"harpoon.ui".nav_next)
vim.keymap.set("n", "<leader>1", function() require"harpoon.ui".nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() require"harpoon.ui".nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() require"harpoon.ui".nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() require"harpoon.ui".nav_file(4) end)

-- Dap
vim.keymap.set("n", "<leader>dc", function() require("dap").continue() end)
vim.keymap.set("n", "<leader>di", function() require("dap").step_into() end)
vim.keymap.set("n", "<leader>dn", function() require("dap").step_over() end)
vim.keymap.set("n", "<leader>do", function() require("dap").step_out() end)
vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end)
