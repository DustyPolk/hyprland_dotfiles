-- lua/plugins/packer.lua
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'  -- LSP configurations
  use 'nvim-treesitter/nvim-treesitter'  -- Treesitter configurations
  use 'kyazdani42/nvim-tree.lua'  -- File explorer
  use 'folke/tokyonight.nvim'  -- Color scheme
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'github/copilot.vim',
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end
  }
end)

