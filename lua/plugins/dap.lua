-- Dap configured so that when it get opened it looks into the current project's folder for a lua file called
-- "dapconfig.lua" that will contain the configuration for the current project.
-- Example config:
-- return {
-- 	adapter = {
-- 		type = "executable",
-- 		command = "gdb",
-- 		args = { "-i", "dap" }
-- 	},
-- 
-- 	config = {
-- 		name = "Launch",
-- 		type = "gdb",
-- 		request = "launch",
-- 		program = function()
-- 			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
-- 		end,
-- 		cwd = "${workspaceFolder}",
-- 		stopAtBeginningOfMainSubprogram = false,
-- 	}
-- }


--- @return table|nil
local function configGetter()
	if not (vim.fn.filereadable("debugger.lua") == 1) then
		return nil
	end

	local config = require("debugger")
	if config then
		return config
	end
	return nil
end

return {
	"mfussenegger/nvim-dap",
	config = function()
		local config = configGetter()
		if config then
			require("dap").configurations[config.lang] = config.config
			require("dap").adapters[config.adapter.id] = config.adapter
		end
	end,
	dependencies = {
		{
			"rcarriga/nvim-dap-ui",
			config = function()
				require("dapui").setup()
			end,
			dependencies = {
				"nvim-neotest/nvim-nio"
			}
		},
		{
			"theHamsta/nvim-dap-virtual-text"
		}
	}
}

