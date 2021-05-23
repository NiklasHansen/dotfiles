local function init()
	local plugins = {
		'packer',

		'lsp',
		'treesitter',
		'compe',

		'telescope',

		'nord',

		'lualine',
	}

	for _, plug in ipairs(plugins) do
		require(string.format('plugins.%s', plug)).init()
	end
end

return {
	init = init,
}
