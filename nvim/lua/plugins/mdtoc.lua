local M = {
  "hedyhli/markdown-toc.nvim",
  ft = "markdown",  -- Lazy load on markdown filetype
  cmd = { "Mtoc" }, -- Or, lazy load on "Mtoc" command
  opts = {
    -- Your configuration here (optional)
  },
}

M.config = function()
  require('mtoc').setup({})
end

return M
