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
   use {'folke/which-key.nvim', event = "BufWinEnter", config = "require('whichkey-config')"}
end)

