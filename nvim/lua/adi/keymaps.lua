local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

-- Better window navigation
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", ":bnext<CR>", opts)
-- keymap("n", "<m-tab>", "<c-6>", opts)

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("x", "p", [["_dP]])

vim.cmd [[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]]
vim.cmd [[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]]
-- vim.cmd [[:amenu 10.120 mousemenu.-sep- *]]

vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>:popup mousemenu<CR>")

keymap({ "n", "o", "x" }, "<s-h>", "^", opts)
keymap({ "n", "o", "x" }, "<s-l>", "g_", opts)

keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap("n", "<leader>w", ":lua vim.wo.wrap = not vim.wo.wrap<CR>", opts)

keymap("i", "<C-l>", "<right>", opts)

vim.api.nvim_set_keymap("t", "<C-;>", "<C-\\><C-n>", opts)

keymap("n", "<c-j>", ":bnext<CR>", opts)
keymap("n", "<c-k>", ":bprevious<CR>", opts)

keymap("n", "<leader>e", "i```cpp<Return>#include <iostream><Return><Return>int main(){<Return><Return><Return><Return>return 0;<Return>}<Return>```<Up><Up><Up><Up><Tab>", opts)
keymap("n", "<leader>s", "ostd::cout <<  << std::endl;<Esc>13<left>i", opts)
keymap("n", "<leader>l", "i```<Enter>```<Esc>kalua<Enter>", opts)
-- keymap({"n"}, "<C-x>", ":MdEval<CR>")
-- keymap({"i"}, "<C-x>", "<Esc>:MdEval<CR>i")
-- keymap("n", "<leader>op", ":Ve<Enter>60<C-w><", opts)
keymap("n", "<leader>op", ":Neotree", opts)
keymap("n", "L", "10zl")
keymap("n", "H", "10zh")
-- keymap("c", "q", "q|q")
keymap("t", "<esc>", "<C-\\><C-n>")
keymap("n", "<C-t>", ":split | terminal<CR>15<C-w>-")

vim.api.nvim_create_autocmd({"BufWinLeave"}, {
  pattern = {"*.*"},
  desc = "save view (folds), when closing file",
  command = "mkview",
})
vim.api.nvim_create_autocmd({"BufWinEnter"}, {
  pattern = {"*.*"},
  desc = "load view (folds), when opening file",
  command = "silent! loadview"
})
