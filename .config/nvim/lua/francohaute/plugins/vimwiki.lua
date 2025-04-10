return {
	"vimwiki/vimwiki",
	init = function()
		vim.g.vimwiki_list = {
			{
				path = "~/code/codenotes/",
				syntax = "markdown",
				ext = ".md",
			},
		}
		vim.g.vimwiki_ext2syntax = {
			[".md"] = "markdown",
			[".markdown"] = "markdown",
			[".mdown"] = "markdown",
		}
		vim.g.vimwiki_hl_headers = 1
	end,
}
