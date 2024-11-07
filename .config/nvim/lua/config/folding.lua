-- vim script files
vim.api.nvim_create_augroup('filetype_vim', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
	group = 'filetype_vim',
	pattern = 'vim',
	command = 'setlocal foldmethod=marker', -- fold on {{{ and }}}
})

-- python files
vim.api.nvim_create_augroup('filetype_python', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
	group = 'filetype_python',
	pattern = 'python',
	command = 'setlocal foldmethod=indent', -- fold on indentations
})

