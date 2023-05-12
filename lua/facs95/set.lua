vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.updatetime = 50

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 10

vim.opt.signcolumn = "yes"

vim.opt.list = true
vim.opt.listchars = { tab = "▸ " }

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
