return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	event = "BufReadPre",
	opts = {
		options = {
			offsets = {
				{
					filetype = "NvimTree",
				},
			},
		},
	},
}
