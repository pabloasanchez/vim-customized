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

api.nvim_create_autocmd( { "BufAdd", "WinNew", "WinEnter", "BufReadPre", "BufNew" }, { 
  pattern = "*",
  command = "lua if #vim.api.nvim_tabpage_list_wins(0) == 1 and vim.bo.ft ~= 'alpha' then require('zen-mode.view').open() end"
})

-- api.nvim_create_autocmd( { "BufLeave", "WinLeave", }, { 
--   pattern = "*",
--   command = "lua if #vim.api.nvim_tabpage_list_wins(0) ~= 1 and vim.fn.expand('%') then require('zen-mode.view').close() end"
-- })

-- api.nvim_create_autocmd( { "BufAdd", "WinEnter"  }, { 
--   pattern = "*",
--   command = "lua require("zen-mode.view").close()",
-- })

-- api.nvim_create_autocmd( { "VimEnter" }, { 
--   pattern = "*",
--   command = "lua if vim.bo.filetype ~= alpha then vim.api.nvim_command('ArrangeBuffers') end",
-- })

api.nvim_create_autocmd({ "WinNew", "ColorScheme" }, {
  pattern = "*",
  command = "UserHighlights",
})
