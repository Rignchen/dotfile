return {
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup
		priority = 1000, -- load before any other program
		config = function()
			-- load the colorscheme
			vim.cmd([[colorscheme tokyonight]])
		end,
	}
}
