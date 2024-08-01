-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true
-- See `:help vim.opt`
--  For more options, you can see `:help option-list`

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.colorcolumn = '80'
vim.opt.autoindent = true
vim.opt.encoding = 'UTF_8'
vim.opt.foldmethod = 'indent'
vim.opt.foldlevelstart = 10
vim.opt.foldnestmax = 10
vim.opt.number = true
vim.opt.relativenumber = true
-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = false

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 50
vim.opt.timeoutlen = 50

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

vim.opt.cursorline = true
vim.opt.scrolloff = 5
-- vim.opt.shiftwidth = 4
vim.o.termguicolors = true

vim.o.conceallevel = 2
