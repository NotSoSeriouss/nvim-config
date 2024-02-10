return {
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		config = function()
			require("toggleterm").setup{
				shell = function()
					local ok = os.execute("find /bin/zsh | grep .")
					if ok then
						return "/bin/zsh"
					end
					return "/bin/bash"
				end,
				autochdir = true,
				auto_scroll = true,
				start_in_insert = false,
				float_opts = {
					border = "curved"
				}
			}
		end
	}
}
