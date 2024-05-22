local M = {
  "navarasu/onedark.nvim",
  config = function ()
    require('onedark').setup {
        style = 'darker'
    }
    require('onedark').load()
  end
}

return M
