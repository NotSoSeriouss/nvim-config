return {
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
				{ "JoosepAlviste/nvim-ts-context-commentstring"},
				"nvim-treesitter/nvim-treesitter-textobjects",
				-- HACK: remove when https://github.com/windwp/nvim-ts-autotag/issues/125 closed.
				{ "windwp/nvim-ts-autotag", opts = { enable_close_on_slash = false } },
		},
		cmd = {
				"TSBufDisable",
				"TSBufEnable",
				"TSBufToggle",
				"TSDisable",
				"TSEnable",
				"TSToggle",
				"TSInstall",
				"TSInstallInfo",
				"TSInstallSync",
				"TSModuleInfo",
				"TSUninstall",
				"TSUpdate",
				"TSUpdateSync",
		},
		build = ":TSUpdate",
		init = function(plugin)
				require("lazy.core.loader").add_to_rtp(plugin)
				require "nvim-treesitter.query_predicates"

				vim.cmd("TSEnable all")
		end,
		config = function()
				require'nvim-treesitter.configs'.setup {
						-- A list of parser names, or "all" (the five listed parsers should always be installed)
						ensure_installed = {"lua", "vim", "vimdoc"},

						-- Install parsers synchronously (only applied to `ensure_installed`)
						sync_install = false,
						highlight = {
								enable = true,
								additional_vim_regex_highlighting = false,
						},
				}
		end,
}
