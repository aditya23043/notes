local M = {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },

	-- "preservim/vim-markdown",
	-- "masukomi/vim-markdown-folding",
	-- { "tpope/vim-markdown" },
	-- { "shime/vim-livedown" },
	-- "jakewvincent/mkdnflow.nvim",
}

M.config = function()
	vim.g.mkdp_auto_start = 1
	vim.g.mkdp_refresh_slow = 1
	vim.g.mkdp_open_to_the_world = 1
	vim.g.mkdp_browser = "firefox"
	vim.g.mkdp_auto_close = 1
end

return M
