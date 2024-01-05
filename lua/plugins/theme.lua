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


return dracula
