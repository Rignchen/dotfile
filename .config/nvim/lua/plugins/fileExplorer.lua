return {
	{
		"ptzz/lf.vim",
		lazy = false, --ensure that the plugin is loaded
		config = function()
			vim.keymap.set('n', '-', ':Lf<CR>')
		end,
	},
	{
		"voldikss/vim-floaterm",
		lazy = false, --ensure that the plugin is loaded
	}
}

