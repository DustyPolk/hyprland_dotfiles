-- init.lua
-- Set the leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- lua/copilot/init.lua
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Load plugins
require('plugins')

-- Load settings
require('settings')

-- Load LSP
require('lsp')

-- Load colorscheme
require('colorscheme')

require('settings.options')

require('settings.keymaps')
