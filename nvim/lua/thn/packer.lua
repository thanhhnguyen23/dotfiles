vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	---------------------------------------------------------------------------------- 
	-- user defined plugins via packer
	---------------------------------------------------------------------------------- 
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('nvim-treesitter/playground')
	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}
	---------------------------------------------------------------------------------- 
	-- user defined themes
	---------------------------------------------------------------------------------- 
	--	use({ 
	--		'rose-pine/neovim', as = 'rose-pine', 
	--		config = function () vim.cmd('colorscheme rose-pine') 
	--		end
	--	})
	--	use {
	--		"EdenEast/nightfox.nvim" ,
	--		config = function() 
	--			vim.cmd("colorscheme nightfox")
	--		end
	--	}

	use {
		'rebelot/kanagawa.nvim', as = 'kanagawa-wave',
		config = function()
			vim.cmd('colorscheme kanagawa-wave')
 --			vim.cmd("colorscheme kanagawa-dragon")
		end
	}
end)
