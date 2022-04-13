return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {'rose-pine/neovim', config = "vim.cmd('colorscheme rose-pine')"}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    event = "BufWinEnter",
    config = "require('treesitter-config')"
  }
  use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}
  use {'p00f/nvim-ts-rainbow', after = "nvim-treesitter"}
  use {'windwp/nvim-autopairs', config = "require('autopairs-config')"}
  use {'folke/which-key.nvim', config = "require('whichkey-config')"}
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}},
    config = "require('telescope-config')"
  } 
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = "require('lualine-config')"
}
use {"terrortylor/nvim-comment", config = "require('comment-config')"}
use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    event = "BufWinEnter",
    config = "require('bufferline-config')"
  }
use {
    "lukas-reineke/indent-blankline.nvim",
    config = "require('blankline-config')",
    event = "BufRead"
}
use {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end
}
use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    cmd = "NvimTreeToggle",
    config = "require('nvim-tree-config')"
  }
use {'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead"}
use {'neovim/nvim-lspconfig', config = "require('lsp')"}
use {'hrsh7th/cmp-nvim-lsp'}
use {'hrsh7th/cmp-buffer'}
use {'hrsh7th/nvim-cmp'}
use {'hrsh7th/cmp-vsnip'}
use {'hrsh7th/vim-vsnip'}
use {'onsails/lspkind-nvim'}
use {'williamboman/nvim-lsp-installer'}
end)

