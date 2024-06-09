LAZY_PLUGIN_SPEC = {}

function Spec(item)
  table.insert(LAZY_PLUGIN_SPEC, { import = item })
end

Spec("plugins.colorschemes")
Spec("plugins.lsp")
Spec("plugins.completion")
Spec("plugins.markdown")
Spec("plugins.mdpreview")
Spec("plugins.treesitter")
Spec("plugins.autopair")
Spec("plugins.mdrun")
Spec("plugins.mdtable")
Spec("plugins.leetcode")
Spec("plugins.ibl")
Spec("plugins.transparent")
Spec("plugins.flutter")
Spec("plugins.mdtoc")
-- Spec("plugins.love2d")
