local function packer_startup()
	require('packer').startup(function(use)
		-- Packer --
		use 'wbthomason/packer.nvim'
		
		-- Language Support --
		use 'neovim/nvim-lspconfig'
		use 'lspcontainers/lspcontainers.nvim'
		use {
			'hrsh7th/nvim-compe',
			requires = { 'neovim/nvim-lspconfig' }
		}
		use {
      'nvim-treesitter/nvim-treesitter',
      requires = { 'neovim/nvim-lspconfig' },
      run = ":TSUpdate"
    }
    use 'nvim-lua/lsp_extensions.nvim'

		use 'rust-lang/rust.vim'
		
		-- Telescope --
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-lua/popup.nvim'
      }
    }
		use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

		-- Utils --
		use 'hoob3rt/lualine.nvim'
		use 'romgrk/nvim-treesitter-context'
		use 'preservim/nerdcommenter'

		-- Themes --
		use 'arcticicestudio/nord-vim'
	end)
end

local function init()
	packer_startup()
end

return {
	init = init
}
