return {
		--- Uncomment these if you want to manage the language servers from neovim
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		{'neovim/nvim-lspconfig'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/nvim-cmp'},
		{'L3MON4D3/LuaSnip'},
		{
				'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
				config = function()
						local lsp_zero = require('lsp-zero')

						lsp_zero.on_attach(function(_, bufnr)
								-- see :help lsp-zero-keybindings
								-- to learn the available actions
								lsp_zero.default_keymaps({buffer = bufnr})
						end)

						require('mason').setup({})
						require('mason-lspconfig').setup({
								ensure_installed = {},
								handlers = {
										lsp_zero.default_setup,
								},
						})
						require('lspconfig').lua_ls.setup({})
				end
		},
}