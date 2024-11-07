return {
	{
		"junegunn/fzf",
		lazy = false,
		config = function()
			vim.cmd('call fzf#install()')
			vim.keymap.set('n', '<tab><tab>', ':FZF<CR>')
		end,
	}
}
