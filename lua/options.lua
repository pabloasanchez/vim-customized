-- 
--  Nvim options
-- 

vim.g.mapleader = ';'     -- let g:mapleader=";"

vim.opt_global.wrap = false
vim.opt_global.cursorcolumn = true
vim.opt_global.cursorline = true
vim.opt_global.mousefocus = true

-- vim.opt.smartindent = true
-- vim.opt.cindent = true
-- vim.opt.cinoptions = 'l1,j1'
vim.opt.clipboard = vim.opt.clipboard + { 'unnamedplus' }
vim.opt.compatible = false
-- vim.opt.completeopt = { 'longest', 'menu', 'menuone', 'noselect', 'preview' }  -- required by nvim-cmp
vim.opt.completeopt = { 'menu', 'menuone', 'noselect', 'preview' }  -- required by nvim-cmp
vim.opt.expandtab = true
vim.opt.gdefault = true   -- set wildmode=longest:full,full
vim.opt.hidden = true
vim.opt.history = 200
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.list = true
vim.opt.matchtime = 5
vim.opt.mouse = 'a'
--vim.opt.virtualedit = 'block'   -- virtualedit setting basically allows block selections to operate across lines regardless of the underlying text.
vim.opt.number = true
-- vim.opt.numberwidth = 1
vim.opt.ruler = true
vim.opt.shiftwidth = 2    -- use with cindent, will automatically indent
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.showmode = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2
vim.opt.undofile = true
vim.opt.undodir = HOME .. '/.vim/undo'
-- vim.opt.wildmenu = true
-- vim.opt.wildmode = 'longest:full,full'

-- Global namespace, plugins & global options
vim.g.floaterm_opener = 'edit'
vim.g.python3_host_prog= '/usr/bin/python3.9'

vim.cmd('syntax on')
