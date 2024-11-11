-- Clear the page
vim.api.nvim_create_user_command("Clear", function()
	vim.cmd("normal Gd1Gdd")
end, { nargs = 0 })

-- Write the page and open the file explorer
vim.api.nvim_create_user_command("WE", function()
	vim.cmd("normal :w<CR>:E<CR>")
end, { nargs = 0 })

