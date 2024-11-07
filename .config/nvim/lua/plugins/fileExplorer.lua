return {
	{
		"lmburns/lf.nvim",
		lazy = false, --the plugin needs to be loaded to be able to call :Lf
		config = function()
			require("lf").setup({
				escape_quit = true,
				border = "curved",
				default_file_manager = true, -- use lf when opening in a directory
			})

			vim.keymap.set('n', '-', ':Lf<CR>')
		end,
	},
	{
		"toggleterm.nvim",
		lazy = true, --this plugin can stay unloaded until it's called
	}
}

