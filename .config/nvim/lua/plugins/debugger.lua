return {
	{
		"mfussenegger/nvim-dap",
		lazy = false,
		dependencies = {
			"theHamsta/nvim-dap-virtual-text",
			"rcarriga/nvim-dap-ui",
			-- languages
			"mfussenegger/nvim-dap-python",
		},
		config = function()
			require("dap-python").setup("/run/current-system/sw/bin/python3")
		end,
	},
}
