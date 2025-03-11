vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
require 'janagor.options'
require 'janagor.keymaps'
-- require 'janagor.health'
require 'janagor.autocmds'
require 'janagor.lazy'

 require('lazy').setup({ 
 	spec = { import = 'janagor.plugins' },
	checker = { enable = true },
 })
