local opt = vim.opt

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.autoindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspaces
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.incsearch = true
vim.opt.updatetime = 50

-- how many lines to show when scrolling
vim.opt.scrolloff = 10

-- undo tree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

require("eyazan.remap")
require("eyazan.packer")
