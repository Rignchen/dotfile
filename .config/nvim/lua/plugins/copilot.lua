return {
	{
		"github/copilot.vim",
		lazy = false, -- make sure we load this during startup
		config = function()
			vim.keymap.set('i', '<C-Right>', '<Plug>(copilot-accept-word)')
		end
	}
}
