-- Requires packer to be installed. Clone packer repo.

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Color scheme
	use({ 
		'ellisonleao/gruvbox.nvim', 
		as = 'gruvbox',
		config = function() 
			vim.o.background = "dark";
			vim.cmd('colorscheme gruvbox')
		end
	})

	-- Color Syntax
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	-- Harpoon (navigate between files)
	use('nvim-lua/plenary.nvim') 
	use('ThePrimeagen/harpoon')
	-- Go through history of file
	use('mbbill/undotree')
	-- To use git within neovim
	use('tpope/vim-fugitive')
	-- LSP 
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	}
}
end)
