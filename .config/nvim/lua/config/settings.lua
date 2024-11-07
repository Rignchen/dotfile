-- show line numbers (relative and absolute)
vim.o.number = true
vim.o.relativenumber = true

-- show line numbers in directories
vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

-- don't wrap lines
vim.o.wrap = false

-- ignore lowercase when searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- highlight search results
vim.o.hlsearch = true

-- make tabs 4 spaces wide
vim.o.tabstop = 4

-- deactivates mouse
vim.o.mouse = ''

-- don't fix line endings
vim.o.fixeol = false

