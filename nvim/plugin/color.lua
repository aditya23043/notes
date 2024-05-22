vim.cmd.colorscheme "default"

-- Colorscheme: Default edit
if ( vim.g.colors_name == "default" ) then
  vim.api.nvim_set_hl(0, "Comment", { fg = "#333333" })
  vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
  vim.api.nvim_set_hl(0, "LineNr", { fg = "#333333" })
  vim.api.nvim_set_hl(0, "CurSearch", { bg = "#e06c75", fg = "#000000" })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = "#18141c" })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#26202d" })
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff" })
  vim.api.nvim_set_hl(0, "Search", { fg = "#e06c75", bg = "#000000" })
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#000000", bg = "#999999" })
end
