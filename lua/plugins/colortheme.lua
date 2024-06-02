return {
	"navarasu/onedark.nvim",
	"luisiacc/gruvbox-baby",
	{
		"sainnhe/gruvbox-material",
		config = function()
			vim.cmd([[colorscheme gruvbox-material]])
			require("lualine").setup({
				options = {
					theme = "gruvbox-material",
				},
			})
		end,
	},
}
