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

-- legacy goyo
-- api.nvim_create_autocmd(
--   { "User", "GoyoEnter" },
--   { pattern = "*", command = "CustomHighlights" }
-- )

-- api.nvim_create_autocmd(
--   { "User", "GoyoLeave" },
--   { pattern = "*", command = "CustomHighlights" }
-- )
--

-- -- legacy 
-- api.nvim_create_autocmd(
--   { "InsertLeave", "WinEnter" },
--   { pattern = "*", command = "set cursorline", group = cursorGrp }
-- )

-- api.nvim_create_autocmd(
--   { "InsertEnter", "WinLeave" },
--   { pattern = "*", command = "set nocursorline", group = cursorGrp }
-- )

-- api.nvim_create_autocmd( "TermEnter", { 
--   pattern = "term://*",
--   command = ":Limelight!"
-- })

-- api.nvim_create_autocmd( "TermEnter", { 
--   pattern = "term://*",
--   command = "setlocal nonumber norelativenumber"
-- })

-- api.nvim_create_autocmd( "BufAdd", { 
--   pattern = "*",
--   command = "set numberwidth=1"
-- })

api.nvim_create_autocmd( "WinNew", { 
  pattern = "*",
  command = "UserHighlights",
})

api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  command = "UserHighlights",
})
