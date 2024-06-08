local M = {
  { "martinsione/darkplus.nvim" },
  { "dgox16/oldworld.nvim" },
  { "navarasu/onedark.nvim" },
  { "vim-scripts/Spacegray.vim" },
  { "folke/tokyonight.nvim" },
  { "e-q/okcolors.nvim" },
  { "sainnhe/everforest" },
  { "sainnhe/gruvbox-material" },
}

M.config = function()
  require("onedark").setup({
    style = "darker",
  })
  require("onedark").load()
end

return M
