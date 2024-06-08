-- Save Folds on exit
vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
  pattern = { "*.*" },
  desc = "save view (folds), when closing file",
  command = "mkview",
})

-- Load Folds on startup
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*.*" },
  desc = "load view (folds), when opening file",
  command = "silent! loadview",
})

-- Set local settings for terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", {}),
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.scrolloff = 0
  end,
})

-- LEETCODE
vim.api.nvim_create_autocmd({ "BufNewFile" }, {
  pattern = { "coding/leetcode/*.cpp" },
  desc = "Automatically include imp headers in cpp files for leetcode",
  command =
  "normal! i#include <iostream>\n#include <vector>\n\nclass Solution{\npublic:\n\n};\n\nint main(){\n\nreturn 0;\n}",
})
