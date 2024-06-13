require("plugins")

vim.opt.number = true -- display current line number
vim.opt.relativenumber = true -- display lines relative to current
vim.opt.autoread = true -- reload file when changed
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.textwidth = 80
vim.opt.mouse = 'a'

require("mappings")
