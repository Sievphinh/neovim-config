return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {'rose-pine/neovim', config = "vim.cmd('colorscheme rose-pine')"}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    event = "BufWinEnter",
    config = "require('treesitter-config')"
  }
  use {'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp"}
end)
