return {
	"Mofiqul/vscode.nvim",
	dependencies = { 
		"projekt0n/github-nvim-theme",
		"catppuccin/nvim",
		"rose-pine/neovim",
		"savq/melange-nvim",
		"doums/darcula",
	},
	config = function()
		require("vscode").setup{
			transparent = false,
			italic_comments = true,
			underline_links = true,
		}

		vim.cmd.colorscheme "vscode"
	end
}
