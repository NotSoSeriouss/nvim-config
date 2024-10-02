return {
	"Mofiqul/vscode.nvim",
	config = function()
		require("vscode").setup{
			-- Alternatively set style in setup
			-- style = 'light'

			-- Enable transparent background
			transparent = false,

			-- Enable italic comment
			italic_comments = true,

			-- Underline `@markup.link.*` variants
			underline_links = true,
		}

		vim.cmd.colorscheme "vscode"
	end
}
