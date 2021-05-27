local M = {}

M.init = function()
  require("telescope").setup{
    defaults = {
      file_ignore_patterns = {
        "node_modules/.*",
        "secret.d/.*",
        "%.pem",
				"target/*",
				".git/*"
      },
			mappings = {
      	i = {
        	["<esc>"] = require('telescope.actions').close
      	},
    	},
    },
		extensions = {
    	fzf = {
      	fuzzy = true,
      	override_generic_sorter = false,
				override_file_sorter = true,
      	case_mode = "smart_case",
			}
  	}
  }

  local map = vim.api.nvim_set_keymap

  local options = { noremap = true }

  -- Keymaps
  map('n', '<leader>fe', '<CMD>lua require("telescope.builtin").file_browser{ cwd = vim.fn.expand("%:p:h") }<CR>', options)
  map('n', '<leader>fg', '<CMD>lua require("telescope.builtin").git_files{}<CR>', options)
  map('n', '<C-t>', '<CMD>lua require("telescope.builtin").find_files{ hidden = true }<CR>', options)
  --map('n', '<C-t>', "<cmd>lua require('plugins.telescope')['project_files']()<CR>", options)
	map('n', '<C-f>', '<CMD>lua require("telescope.builtin").live_grep()<CR>', options)
  map('n', '<C-Space>', '<CMD>lua require("telescope.builtin").buffers()<CR>', options)
  map('n', '<leader>fh', '<CMD>lua require("telescope.builtin").help_tags()<CR>', options)
end

M.project_files = function()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require'telescope.builtin'.git_files, opts)
  if not ok then require'telescope.builtin'.find_files(opts) end
end

require('telescope').load_extension('fzf')

return M
