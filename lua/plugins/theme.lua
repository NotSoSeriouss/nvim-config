return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {
	"nvim-tree/nvim-web-devicons"
  },
  config = function()
	  vim.cmd("colorscheme tokyonight-moon")
  end
}
