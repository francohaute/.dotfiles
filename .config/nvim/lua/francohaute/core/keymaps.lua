vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set({ "i", "v" }, "fj", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<C-s>", ":wa<CR>")

keymap.set("n", "<leader>q", ":q<CR>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "<leader>op", ":silent !brave-browser %<CR>")

keymap.set("n", "J", ":bp<CR>")
keymap.set("n", "K", ":bn<CR>")
keymap.set("n", "<C-x>", ":bd<CR>")

keymap.set("i", "<C-s>", "``<ESC>i")
keymap.set("i", "<C-b>", "```<CR>```<ESC>ka")

keymap.set("n", "<leader>p", [["+p]])
keymap.set("n", "<leader>c", [["+y]])
keymap.set("v", "<leader>c", [["+y]])

function CreateMarkdownLink()
	-- Prompt the user to enter the link text
	local link_text = vim.fn.input("Link text: ")
	if link_text == "" then
		return
	end -- Exit if no input

	-- Get the current cursor position
	local row, col = unpack(vim.api.nvim_win_get_cursor(0))

	-- Get the current line content
	local current_line = vim.api.nvim_get_current_line()

	-- Create the new line content with the markdown link
	local new_line = current_line:sub(1, col + 1) .. "[" .. link_text .. "]()" .. current_line:sub(col + 1)

	-- Set the new line content
	vim.api.nvim_set_current_line(new_line)

	-- Move the cursor inside the parentheses
	vim.api.nvim_win_set_cursor(0, { row, col + #link_text + 2 })

	-- Schedule Telescope to open after the link is created
	vim.defer_fn(function()
		vim.cmd("Telescope find_files")
	end, 10) -- small delay to ensure Telescope opens after cursor is placed
end
keymap.set("i", "<C-l>", "<ESC>:lua CreateMarkdownLink()<CR>", { noremap = true, silent = true })
