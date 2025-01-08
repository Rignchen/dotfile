-- show line numbers (relative and absolute)
vim.o.number = true
vim.o.relativenumber = true

-- don't wrap lines
vim.o.wrap = false

-- ignore lowercase when searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- highlight search results
vim.o.hlsearch = true

-- make tabs 4 spaces wide
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.api.nvim_create_augroup('tab_settings', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
	group = 'tab_settings',
	pattern = 'cs',
	command = 'setlocal expandtab'
})

-- deactivates mouse
vim.o.mouse = ''

-- don't fix line endings
vim.o.fixeol = false

