vim.cmd("IBLDisableScope")

if vim.fn.expand('%:e') == "md" then
  vim.api.nvim_feedkeys(":MarkdownPreview\n", "n", true)
end

-- vim.cmd("ZenMode")
