local githubTheme = {
	'projekt0n/github-nvim-theme',
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require('github-theme').setup({
			-- ...
		})

		vim.cmd('colorscheme github_dark_default')
	end,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	}
}

local dracula = {
	"doums/darcula",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme darcula")
	end,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	}
}

local vscode = {
	"Mofiqul/vscode.nvim",
	lazy = false,
	priority = 1000,
	config = function()

		vim.o.background = 'dark'

		local c = require('vscode.colors').get_colors()
		require('vscode').setup({
			-- Alternatively set style in setup
			-- style = 'light'

			-- Enable transparent background
			transparent = true,

			-- Enable italic comment
			italic_comments = true,

			-- Disable nvim-tree background color
			disable_nvimtree_bg = false,

			-- Override highlight groups (see ./lua/vscode/theme.lua)
			group_overrides = {
				-- this supports the same val table as vim.api.nvim_set_hl
				-- use colors from this colorscheme by requiring vscode.colors!
				Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
			}
		})
		require('vscode').load()
	end,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	}
}

local coffeetable = {
	"NotSoSeriouss/coffeetable.vim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme coffeetable-dark")
	end,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	}
}

vim.cmd("colorscheme slate")
return {"nvim-tree/nvim-web-devicons"}
