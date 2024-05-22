LAZY_PLUGIN_SPEC = {}

function Spec(item)
	table.insert(LAZY_PLUGIN_SPEC, { import = item })
end

Spec("plugins.colorschemes")
Spec("plugins.lsp")
Spec("plugins.completion")
