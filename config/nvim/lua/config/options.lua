vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.colorcolumn = "81"
vim.opt.showmode = false
vim.opt.laststatus = 2
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.shortmess:append("I")
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.listchars:append({ space = ".", eol = "↴" })
vim.opt.termguicolors = true
vim.g.tex_flavor = "latex"
vim.cmd("syntax off")
