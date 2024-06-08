-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- PLUGINS
require("plugins")

-- lazy pkg manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = LAZY_PLUGIN_SPEC,
  change_detection = {
    enabled = false,
    notify = false,
  },
})
