local M = {
  {
    'michaelb/sniprun',
    build = "bash install.sh"
  },
  {
    "jubnzv/mdeval.nvim",
  }
}

M.config = function()
  require('mdeval').setup({
    require_confirmation = false,
    eval_options = {
      cpp = {},
      java = {},
    },
  })
end

return M
