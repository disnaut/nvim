-- Access to clipboard
vim.api.nvim_set_option("clipboard", "unnamed")

-- Allows colorschemes to be used
vim.opt.termguicolors = true

-- sets line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Sets Status Bar
vim.opt.laststatus = 2

-- Enable Plugins and load plugin for the detected file type
vim.opt.filetype.plugin = 'on'

-- Load an indent file for the detected file type
vim.opt.filetype.indent = 'on'

-- Syntax Highlighting
vim.opt.syntax = 'on'

vim.opt.shiftwidth = 4

vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab = true

vim.opt.scrolloff=8

vim.opt.incsearch = true

vim.opt.ignorecase = true

vim.opt.smartcase = true

vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.showmatch = true

vim.opt.history = 1000

-- Wildmenu options
vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest"
vim.opt.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx"

-- ms between no actions and neovim updating
vim.opt.updatetime = 50

vim.opt.swapfile = false
vim.opt.backup = false

-- Stops serach terms from being highlighted
vim.opt.hlsearch = false

vim.opt.isfname:append("@-@")
vim.opt.colorcolumn = "80"

vim.cmd[[hi NormalNC guibg=NONE]]
