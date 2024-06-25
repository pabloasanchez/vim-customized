-- Either install quiet-code colorscheme, or force highlights with the following user cmd
vim.api.nvim_create_user_command("UserHighlights", [[
   hi Normal ctermbg=16 guibg=#000000 guifg=#aaaaaa
   hi NormalFloat ctermbg=16 guibg=16
   hi WinBar ctermfg=173 cterm=bold guifg=#ff7800 gui=bold guibg=black
   hi WinBarNC ctermfg=234 cterm=bold guifg=#444444 gui=bold guibg=black
   hi WinBarInsert ctermfg=red gui=bold cterm=bold guibg=black guifg=red
   hi WinSeparator ctermfg=DarkGray guifg=#161616
   hi TabLine ctermfg=234 guifg=234 guibg=red
   hi TabLineFill ctermfg=234 guifg=234
   hi TabLineSel ctermfg=DarkGray guifg=DarkGray
   hi StatusLine ctermfg=180 gui=bold cterm=bold guibg=#0a0a0a guifg=#333333
   hi StatusLineNC ctermfg=black guifg=black
   hi StatusLineInsert ctermfg=red gui=bold cterm=bold guibg=#0a0a0a guifg=red
   hi ModeMsg ctermfg=red gui=bold cterm=bold guifg=red
   hi SignColumn guibg=#000000
   hi Pmenu ctermfg=59 ctermbg=16 guifg=59 guibg=16
   hi PmenuSel ctermfg=173 ctermbg=235 cterm=bold guifg=173 guibg=#222222 gui=bold
   hi LineNr ctermfg=235 guifg=#333333
   hi NodeInspectBreakpoint ctermfg=130 ctermbg=red guifg=130 guibg=red
   hi NodeInspectSign ctermfg=red ctermbg=0 cterm=bold guifg=red guibg=0 gui=bold
   hi Identifier guifg=#ff7800
   hi FoldColumn guibg=black
   hi Visual ctermfg=173 ctermbg=235 cterm=bold guifg=orange guibg=#222222 gui=bold
   hi Cursor ctermbg=233 ctermfg=130 guibg=#222222 guifg=130
   hi CursorColumn ctermfg=DarkGray cterm=bold guifg=DarkGray guibg=#0a0a0a gui=bold
   hi CursorLine ctermbg=233 guibg=#161616
   hi CursorLineNR ctermfg=202 cterm=bold guifg=202 gui=bold guibg=black
   hi GitGutterDeleteLineNr guifg=#555555
   hi GitGutterAddLineNr guifg=#555555
   hi GitGutterChangeLineNr guifg=#555555
   hi GitGutterChangeDeleteLineNr guifg=#555555
   hi DiffAdd guifg=#555555 ctermfg=DarkGray
   hi DiffChange guifg=#555555 ctermfg=DarkGray
   hi DiffDelete guifg=#555555 ctermfg=DarkGray
   hi EndOfBuffer ctermbg=black ctermfg=black guibg=black guifg=black
   hi @variable ctermfg=Gray guifg=Gray
   hi Delimiter ctermfg=Gray guifg=#444444
   hi Search ctermfg=173 ctermbg=235 cterm=bold guifg=173 guibg=#222222 gui=bold
   hi MatchParen ctermfg=173 ctermbg=235 cterm=bold guifg=white guibg=#222222 gui=bold
 ]], {})

-- Modal highlights (see autocommands.lua as well)
function insert()
  vim.cmd "hi LineNr ctermfg=red guifg=red"
  -- vim.api.nvim_set_hl(0, "LineNr", { ctermfg = "red" })
end

function normal()
  vim.cmd "hi LineNr ctermbg=black ctermfg=235 guibg=black guifg=#333333"
  -- vim.api.nvim_set_hl(0, "LineNr", { ctermfg = normalBackground })
end

vim.api.nvim_create_user_command("UserHighlightsInsert", insert, {})
vim.api.nvim_create_user_command("UserHighlightsNormal", normal, {})

-- Colorscheme
vim.cmd "colorscheme quiet-code"

-- OR... --
-- vim.cmd "colorscheme deep-space"
-- vim.cmd "UserHighlights"
