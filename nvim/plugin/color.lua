vim.cmd.colorscheme("onedark")

-- Onedark
if vim.g.colors_name == "onedark" then
	vim.api.nvim_set_hl(0, "Comment", { fg = "#424857" })
	vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
	-- vim.api.nvim_set_hl(0, "StatusLine", { fg = "#7c879c", bg = "#1d2026" })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = "#7c879c", bg = "#16181d" })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#373c49" })
	vim.api.nvim_set_hl(0, "Pmenu", { bg = "#16181d" })
	vim.api.nvim_set_hl(0, "Normal", { bg = "#1f2329" })
	-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#282c34" })
	vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#1f2329" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "#1f2329" })
	vim.api.nvim_set_hl(0, "CurSearch", { bg = "#e06c75", fg = "#000000" })
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "Search", { fg = "#e06c75" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#1f2329", fg = "#1f2329" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1f2329" })

-- Default edit
elseif vim.g.colors_name == "default" then
	vim.api.nvim_set_hl(0, "Comment", { fg = "#333333" })
	vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#333333" })
	vim.api.nvim_set_hl(0, "CurSearch", { bg = "#e06c75", fg = "#000000" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#18141c" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#26202d" })
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "Search", { fg = "#e06c75", bg = "#000000" })
	vim.api.nvim_set_hl(0, "WildMenu", { fg = "#000000", bg = "#abb2bf" })
	vim.api.nvim_set_hl(0, "Pmenu", { fg = "#abb2bf", bg = "#000000" })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#000000", bg = "#abb2bf" })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = "#abb2bf", bg = "#0d0b0f" })

-- Ok colors
elseif vim.g.colors_name == "okcolors" then
	vim.api.nvim_set_hl(0, "Comment", { fg = "#333333" })
	vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#26202d" })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#333333" })
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "Search", { fg = "#e06c75" })
	vim.api.nvim_set_hl(0, "WildMenu", { fg = "#000000", bg = "#abb2bf" })
	vim.api.nvim_set_hl(0, "Pmenu", { fg = "#abb2bf", bg = "#000000" })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#000000", bg = "#abb2bf" })

-- Tokyonight
elseif vim.g.colors_name == "tokyonight" then
	vim.api.nvim_set_hl(0, "Comment", { fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
end
