vim.g.have_nerd_font = true

-- let's have an undodir!
local undodir_path = "~/.dotfiles/nvim/.undodir"
local undodir = vim.fn.expand(undodir_path)
if vim.fn.isdirectory(undodir) == 0 then
	vim.fn.mkdir(undodir, "p")
	vim.uv.fs_chmod(undodir, 448) -- 0700
end
vim.opt.undodir = undodir
vim.opt.undofile = true

vim.opt.encoding = 'UTF_8'

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.textwidth = 80
vim.opt.colorcolumn = '80'
vim.opt.cursorline = true
vim.o.guicursor = "a:block"
vim.opt.showmode = false

vim.opt.mouse = 'a'

vim.opt.autoread = true
vim.g.backspace = "ident,eol,start"

vim.opt.signcolumn = 'yes'

vim.g.autoindent = false
vim.g.breakindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 400
vim.opt.timeoutlen = 400

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

vim.opt.scrolloff = 4

vim.o.termguicolors = true

vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)


-- vim.opt.foldmethod = 'indent'
-- vim.opt.foldlevelstart = 10
-- vim.opt.foldnestmax = 10
