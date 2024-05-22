local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Tab remap
keymap("n", "<C-i>", "<C-i>", opts)

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Register
keymap("x", "p", [["_dP]])

-- Line
keymap({ "n", "o", "x" }, "<s-h>", "^", opts)
keymap({ "n", "o", "x" }, "<s-l>", "g_", opts)

-- Wrap
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap("n", "<leader>w", ":lua vim.wo.wrap = not vim.wo.wrap<CR>", opts)

-- Move right easily in insert mode
keymap("i", "<C-l>", "<right>", opts)

-- Buffer
keymap("n", "<M-j>", ":bnext<CR>", opts)
keymap("n", "<M-k>", ":bprevious<CR>", opts)

-- Horizontal Scrolling
keymap("n", "L", "10zl")
keymap("n", "H", "10zh")

-- Terminal
keymap("n", "<C-t>", ":split | terminal<CR>15<C-w>-")
keymap("t", "<Esc>", "<C-\\><C-n>", opts)

-- Open a terminal at the bottom of the screen with a fixed height.
keymap("n", "<leader>t", function()
	vim.cmd.new()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 12)
	vim.wo.winfixheight = true
	vim.cmd.term()
end)

-- Reloading Config
keymap("n", "<leader>x", "<cmd>.lua<CR>", { desc = "Execute the current line" })
keymap("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Execute the current line" })

-- Tab Navigation
keymap("n", "<C-.>", "gt")
keymap("n", "<C-,>", "gT")

-- Split size adjustment
keymap("n", "<M-,>", "<c-w>5<")
keymap("n", "<M-.>", "<c-w>5>")
keymap("n", "<M-t>", "<c-W>+")
keymap("n", "<M-s>", "<c-W>-")

-- Toggle hlsearch if it's on, otherwise just do "enter"
keymap("n", "<CR>", function()
	---@diagnostic disable-next-line: undefined-field
	if vim.opt.hlsearch:get() then
		vim.cmd.nohl()
		return ""
	else
		return "<CR>"
	end
end, { expr = true })

-- Diagnostic
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
keymap("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
keymap("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
