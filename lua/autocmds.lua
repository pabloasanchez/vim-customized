local api = vim.api

-- Highlight on yank
local yankGrp = api.nvim_create_augroup("YankHighlight", { clear = true })

api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})

-- go to last loc when opening a buffer
api.nvim_create_autocmd( "BufReadPost", { 
  command = [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]]
})

-- show cursor line only in active window
local cursorGrp = api.nvim_create_augroup("CursorLine", { clear = true })

api.nvim_create_autocmd( "InsertEnter", { 
  pattern = "*",
  command = "UserHighlightsInsert"
})

api.nvim_create_autocmd( "InsertLeave", { 
  pattern = "*",
  command = "UserHighlightsNormal"
})

api.nvim_create_autocmd({ "WinNew", "ColorScheme" }, {
  pattern = "*",
  command = "UserHighlights",
})

-- Zen mode (NNP) Autocommands to attempt to automatically enter Zen mode

-- api.nvim_create_autocmd( { "BufNew" }, { 
--  pattern = "*",
--  command = "lua if #vim.api.nvim_tabpage_list_wins(0) == 1 and vim.bo.ft ~= 'alpha' then vim.cmd('Zen') end"
-- })
--
-- api.nvim_create_autocmd( { "BufWinEnter", "VimEnter", "BufReadPost" }, { 
--  pattern = "*",
--   command = "lua if vim.bo.ft == 'no-neck-pain' then vim.cmd[[wincmd l]] end"
-- })

-- -- api.nvim_create_autocmd({ "BufRead", "VimEnter" }, {
-- --   pattern = "*",
-- --  command = "let &l:modifiable = !&readonly",
-- -- })

