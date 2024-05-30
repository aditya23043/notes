local M = {
	-- "preservim/vim-markdown",
	-- "masukomi/vim-markdown-folding",
	"tpope/vim-markdown",
	-- "masukomi/vim-markdown-folding",
	-- { "shime/vim-livedown" },
	-- "jakewvincent/mkdnflow.nvim",
}

M.config = function()
	vim.g.markdown_folding = 1
	vim.g.markdown_fenced_languages = { "asm", "cpp" }
	-- vim.g.markdown_fold_override_foldtext = 0
end

return M
