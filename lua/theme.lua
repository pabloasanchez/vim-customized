vim.api.nvim_create_user_command("UserHighlights", [[
   hi NormalFloat ctermbg=16 
   hi TabLine ctermbg=black ctermfg=234
   hi TabLine ctermbg=black ctermfg=darkblue
   hi TabLine ctermbg=black ctermfg=234
   hi TabLineFill ctermbg=black ctermfg=234
   hi TabLineFill ctermbg=black ctermfg=darkblue
   hi TabLineFill ctermbg=black ctermfg=234
   hi TabLineSel ctermbg=black ctermfg=yellow
   hi TabLineSel ctermbg=black ctermfg=blue
   hi TabLineSel ctermbg=black ctermfg=DarkGray
   hi StatusLine ctermbg=130 ctermfg=233 cterm=bold
   hi StatusLine ctermfg=180 ctermbg=0 cterm=bold
   hi StatusLineNC ctermbg=233 ctermfg=130
   hi StatusLineNC ctermbg=black ctermfg=darkblue
   hi StatusLineNC ctermbg=black ctermfg=234 cterm=bold
   hi Cursor ctermbg=233 ctermfg=130
   hi Cursor ctermbg=black ctermfg=darkblue
   hi CursorColumn ctermbg=black ctermfg=130 cterm=bold
   hi CursorColumn ctermbg=black ctermfg=DarkGray cterm=bold
   hi CursorLine ctermbg=233
   hi Pmenu ctermfg=59 ctermbg=16
   hi PmenuSel ctermfg=173 ctermbg=235 cterm=bold
   hi CursorLineNR ctermbg=233 ctermfg=130 cterm=inverse
   hi CursorLineNR ctermfg=202 ctermbg=0 cterm=bold
   hi LineNr ctermbg=black ctermfg=235
   hi WinBar ctermfg=173 ctermbg=0 cterm=bold
   hi WinBarNC ctermbg=black ctermfg=234 cterm=bold
   hi NodeInspectBreakpoint ctermfg=130 ctermbg=red
   hi NodeInspectSign ctermfg=red ctermbg=0 cterm=bold


   let g:limelight_paragraph_span = 4
   let g:limelight_conceal_ctermfg = 'gray'
   let g:limelight_conceal_ctermfg = 240
   let g:limelight_conceal_guifg = 'DarkGray'
   let g:limelight_conceal_guifg = '#777777' ]], {})

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

vim.cmd "colorscheme one"
vim.cmd "UserHighlights"

