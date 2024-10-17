---@diagnostic disable-next-line
vim = vim or {}

-- General
vim.keymap.set("n", "<leader>f", "magg0=G`azz") -- Indent buffer
vim.keymap.set("n", "<leader>7", "<cmd>noh<cr>") -- Clear search
vim.keymap.set("n", "+", "<C-d>zz") -- Scroll up by half page
vim.keymap.set("n", "-", "<C-u>zz") -- Scroll down by half page
vim.keymap.set("n", "<leader>s", "<cmd>wa<cr><cmd>qa<cr>") -- Save and quit
vim.keymap.set("n", "gp", "<cmd>e#<cr>") -- Go to last edited buffer
vim.keymap.set("n", "<leader>pr", "<cmd>LspRestart<cr>") -- Restart LSP

-- Windows
vim.keymap.set("n", "<leader>ww", "<C-w>w") -- Focus next window
vim.keymap.set("n", "<leader>wp", "<C-w>W") -- Focus previous window
vim.keymap.set("n", "<leader>wj", "<C-w>s<C-w>w") -- Split window and focus next
vim.keymap.set("n", "<leader>wl", "<C-w>v<C-w>w") -- Split window and focus previous
vim.keymap.set("n", "<leader>wq", "<cmd>q<cr>") -- Close window

-- Terminal
vim.keymap.set("n", "<leader>wt", "<cmd>ToggleTerm direction=horizontal<cr>a") -- Toggle terminal
vim.keymap.set("n", "<leader>wf", "<Cmd>ToggleTerm direction=float<CR>a") -- Toggle terminal floating
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { silent = true }) -- Escape terminal

-- Lazy
vim.keymap.set("n", "<leader>lh", "<cmd>Lazy home<cr>") -- Lazy home
vim.keymap.set("n", "<leader>li", "<cmd>Lazy install<cr>") -- Lazy install
vim.keymap.set("n", "<leader>lu", "<cmd>Lazy update<cr>") -- Lazy update
vim.keymap.set("n", "<leader>lc", "<cmd>Lazy clean<cr>") -- Lazy clean

-- Trouble
vim.keymap.set("n", "<leader>pt", "<cmd>Trouble diagnostics<cr>") -- Toggle trouble

-- Trouble
vim.keymap.set("n", "<leader>pt", "<cmd>TroubleToggle<cr>")

-- Telescope
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>") -- Find files
vim.keymap.set("n", "<leader>ps", function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) end) -- Search files
vim.keymap.set("n", "<leader>*", "<cmd>Telescope grep_string<cr>") -- Search word under cursor in all project

-- NvimTree
vim.keymap.set("n", "<leader><Tab>", require"nvim-tree.api".tree.toggle) -- Toggle NvimTree

-- Harpoon
vim.keymap.set("n", "<leader>ha", require"harpoon.mark".add_file) -- Add file to harpoon
vim.keymap.set("n", "<leader>hs", require"harpoon.ui".toggle_quick_menu) -- Toggle harpoon
vim.keymap.set("n", "<leader>hg", require"harpoon.ui".nav_prev) -- Next harpoon file
vim.keymap.set("n", "<leader>hj", require"harpoon.ui".nav_next) -- Previous harpoon file
vim.keymap.set("n", "<leader>1", function() require"harpoon.ui".nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() require"harpoon.ui".nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() require"harpoon.ui".nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() require"harpoon.ui".nav_file(4) end)

-- Dap
<<<<<<< HEAD
vim.keymap.set("n", "<leader>dc", function() require("dap").continue() end)
vim.keymap.set("n", "<leader>d<Down>", function() require("dap").step_into() end)
vim.keymap.set("n", "<leader>d<Left>", function() require("dap").step_over() end)
vim.keymap.set("n", "<leader>d<Up>", function() require("dap").step_out() end)
vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end)
vim.keymap.set("n", "<leader>ds", function() require("dapui").toggle() end)

-- Copilot
vim.keymap.set("n", "<leader>ce", "<cmd>Copilot enable<cr>")
vim.keymap.set("n", "<leader>cd", "<cmd>Copilot disable<cr>")
=======
vim.keymap.set("n", "<leader>dc", function() require("dap").continue() end) -- Continue
vim.keymap.set("n", "<leader>d<Down>", function() require("dap").step_into() end) -- Step into
vim.keymap.set("n", "<leader>d<Left>", function() require("dap").step_over() end) -- Step over
vim.keymap.set("n", "<leader>d<Up>", function() require("dap").step_out() end) -- Step out
vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end) -- Toggle breakpoint
vim.keymap.set("n", "<leader>ds", function() require("dapui").toggle() end) -- Toggle DAP UI

-- Autocomplete
vim.keymap.set("n", "<leader>ce", "<cmd>Codeium Enable<cr>") -- Enable codeium
vim.keymap.set("n", "<leader>cd", "<cmd>Codeium Disable<cr>") -- Disable codeium

-- GitConflict
vim.keymap.set("n", "<leader>gcn", "<cmd>GitConflictNextConflict<cr>") -- Next conflict
vim.keymap.set("n", "<leader>gcp", "<cmd>GitConflictPrevConflict<cr>") -- Previous conflict
vim.keymap.set("n", "<leader>gco", "<cmd>GitConflictChooseTheirs<cr>") -- Solve conflict by picking incoming changes
vim.keymap.set("n", "<leader>gct", "<cmd>GitConflictChooseOurs<cr>") -- Solve conflict by picking outgoing changes

-- GitSigns
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>") -- Toggle blame
vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<cr>") -- View buffer's diff
>>>>>>> 4.0
