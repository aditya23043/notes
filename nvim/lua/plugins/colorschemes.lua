local M = {
	{ "navarasu/onedark.nvim" },
	{ "vim-scripts/Spacegray.vim" },
	{ "folke/tokyonight.nvim" },
	{ "e-q/okcolors.nvim" },
	{ "sainnhe/everforest" },
	{ "cocopon/iceberg.vim" },
	{ "nanotech/jellybeans.vim" },
	{ "sainnhe/gruvbox-material" },
	{ "w0ng/vim-hybrid" },
}

M.config = function()
	require("onedark").setup({
		style = "darker",
	})
	require("onedark").load()
end

return M
