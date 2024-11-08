require "nvchad.options"

-- add yours here!

local o = vim.o
o.so = 8
o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus,unnamed"
o.cursorlineopt = "both" -- to enable cursorline!

o.swapfile = false
o.backup = false
o.undodir = os.getenv "HOME" .. "/.vim/undodir"
o.undofile = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
