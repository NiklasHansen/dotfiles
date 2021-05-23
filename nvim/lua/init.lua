local function init()
	require 'vim'.init()
	require 'plugins'.init()
end

return {
	init = init,
}
