local split = require '..lib.split'.split

-- Clear the page
vim.api.nvim_create_user_command("Clear", function()
	vim.cmd("normal Gd1Gdd")
end, { nargs = 0 })

-- Write the page and open the file explorer
vim.api.nvim_create_user_command("WE", function()
	vim.cmd("normal :w<CR>:E<CR>")
end, { nargs = 0 })

-- Replace the occurences in text with the given strings at the beginning of the file
-- formated as key=value followed by an empty line
vim.api.nvim_create_user_command("Replace", function()
	local file = vim.api.nvim_buf_get_lines(0, 0, vim.api.nvim_buf_line_count(0), false)
	local replace = {}
	while string.find(file[1], "=") do
		local key, value = string.match(file[1], "(.-)=(.+)")
		table.remove(file, 1)
		replace[key] = value
	end
	while file[1] == "" do
		table.remove(file, 1)
	end
	file = table.concat(file, "\n")
	for key, value in pairs(replace) do
		file = string.gsub(file, key, value)
	end
	file = split(file, '\n')
	vim.api.nvim_buf_set_lines(0, 0, -1, false, file)
end, { nargs = 0 })
