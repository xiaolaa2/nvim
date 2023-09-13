vim.cmd [[packadd packer.nvim]]

require('packer').init({
    git = {
        default_url_format = 'git@github.com:%s'
    }
})
require('packer').startup(function(use)

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'sainnhe/everforest'

	-- some plugins
	use 'easymotion/vim-easymotion' 
	use 'tpope/vim-surround' 
	use 'luochen1990/rainbow'
	use 'vim-airline/vim-airline'
	-- nvim-tree
	use {
			'nvim-tree/nvim-tree.lua',
			requires = {
					'nvim-tree/nvim-web-devicons', -- optional, for file icons
			},
			tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	-- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	-- nvim-telescopeuse 
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = {{'nvim-lua/plenary.nvim'}, {'BurntSushi/ripgrep'}}
		
	}
	-- vim-commentary
	use 'tpope/vim-commentary'
	-- auto-pair
	use 'jiangmiao/auto-pairs'
	-- vim-viusal-multi
	use {'mg979/vim-visual-multi', branch = 'master'}

	-- auto complete
	use {'neoclide/coc.nvim', branch = 'release'}	
	-- auto syntax check
	use 'dense-analysis/ale'

	-- use nvim-treesitter
	-- use { 'nvim-treesitter/nvim-treesitter', run = function()
            -- local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            -- ts_update()
        -- end,
	-- }

end)


