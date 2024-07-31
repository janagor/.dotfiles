vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
require 'janagor.health'
require 'janagor.options'
require 'janagor.keymaps'
require 'janagor.autocmds'
require 'janagor.init'
require('lazy').setup { import = 'janagor.plugins' }
