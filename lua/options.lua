-- 
--  Nvim options
-- 

vim.g.mapleader = ';'     -- let g:mapleader=";"

vim.opt_global.wrap = true
vim.opt_global.cursorline = true
vim.opt_global.mousefocus = true

him.opt.history = 200
vim.opt.undofile = true
vim.opt.list = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.ignorecase = true
vim.opt.compatible = false
vim.opt.undodir = HOME .. '/.vim/undo'
vim.opt.clipboard = vim.opt.clipboard + { 'unnamedplus' }
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }  -- required by nvim-cmp


