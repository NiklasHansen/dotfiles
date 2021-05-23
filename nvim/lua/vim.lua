local function set_vim_g()
	vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', { noremap = false })
	vim.g.mapleader = " "
end

local function set_vim_o()
	local settings = {
		backup = false,
		errorbells = false,
		expandtab = true,
		hidden = true,
		scrolloff = 3,
		softtabstop = 2,
		showmode = false,
		termguicolors = true
	}

	for k, v in pairs(settings) do
		vim.o[k] = v
	end

	vim.cmd('set encoding=utf8')
	vim.cmd('set nowritebackup')
	vim.cmd('set shiftwidth=2')
	vim.cmd('set secure')
	vim.cmd('set splitright')
	vim.cmd('set tabstop=2')
	vim.cmd('set updatetime=300')
	vim.cmd('syntax enable')
	vim.cmd('filetype plugin indent on')
end

local function set_vim_wo()
	vim.wo.number = true
	vim.wo.relativenumber = true
	vim.wo.wrap = false
end

local function init()
	set_vim_g()
	set_vim_o()
	set_vim_wo()
end

return {
	init = init
}
