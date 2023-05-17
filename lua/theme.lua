vim.api.nvim_create_user_command("UserHighlights", [[
   hi NormalFloat ctermbg=16
   hi TabLine ctermfg=234
   hi TabLineFill ctermfg=234
   hi TabLineSel ctermfg=DarkGray
   hi StatusLine ctermfg=180 gui=bold cterm=bold
   hi StatusLineNC ctermfg=black
   hi Cursor ctermbg=233 ctermfg=130
   hi CursorColumn ctermfg=DarkGray cterm=bold
   hi CursorLine ctermbg=233
   hi Pmenu ctermfg=59 ctermbg=16
   hi PmenuSel ctermfg=173 ctermbg=235 cterm=bold
   hi CursorLineNR ctermfg=202 cterm=bold
   hi LineNr ctermfg=235
   hi WinBar ctermfg=173 cterm=bold
   hi WinBarNC ctermfg=234 cterm=bold
   hi NodeInspectBreakpoint ctermfg=130 ctermbg=red
   hi NodeInspectSign ctermfg=red ctermbg=0 cterm=bold
 ]], {})

-- TODO
-- hi link WinBar StatusLine
-- hi link WinBarNC StatusLineNC

function insert()
  vim.cmd "hi LineNr ctermfg=red"
  -- vim.api.nvim_set_hl(0, "LineNr", { ctermfg = "red" })
end

function normal()
  vim.cmd "hi LineNr ctermbg=black ctermfg=235"
  -- vim.api.nvim_set_hl(0, "LineNr", { ctermfg = normalBackground })
end

vim.api.nvim_create_user_command("UserHighlightsInsert", insert, {})
vim.api.nvim_create_user_command("UserHighlightsNormal", normal, {})

-- legacy for older neovim versions
-- vim.cmd[[highlight ColorColumn ctermbg=0 guibg=lightgrey]]

-- vim.cmd "colorscheme one"
-- vim.cmd "colorscheme orbital"
vim.cmd "colorscheme nord"

vim.cmd "UserHighlights"

