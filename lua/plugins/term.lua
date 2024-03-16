local function getShell()
	if os.getenv("HOME") == nil then
		return "%SystemRoot%\\system32\\WindowsPowerShell\\v1.0\\powershell.exe"
	end

	local ok = os.execute("find /bin/zsh | grep .")
	if ok then
		return "/bin/zsh"
	end
	return "/bin/bash"
end

return {
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		config = function()
			require("toggleterm").setup{
				shell = getShell(),
				autochdir = true,
				auto_scroll = true,
				start_in_insert = false,
				close_on_exit = true,
				float_opts = {
					border = "curved",
					title_pos = "center",
					winblend = 10,
				},
			}
		end
	}
}
