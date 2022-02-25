" options.vim - Additional vim options
" To reduce cluttering of vim.init

set ignorecase
set history=150                  "hi:    keep 50 lines of command line history

" Enables OS clipboard integration
set clipboard+=unnamedplus

" Disables numbers on Terminal mode and limelight
autocmd TermEnter term://* :Limelight!
autocmd TermEnter term://* setlocal nonumber norelativenumber

" Maintain undo history between sessions
set undofile 
set undodir=~/.vim/undo

" floaterm options
let g:floaterm_opener = 'edit'
command! Broot :FloatermNew --autoclose=1 --width=0.5 --height=0.4 --wintype=float --title=\  --borderchars=\ \ \ \ \ \ \ \  broot

" Shows hidden chars TODO broken when using Goyo
" set lcs=tab:··,trail:·,space:·
set list

" Fold column (margin)
set foldcolumn=2

" Colors / Color Schemes
colorscheme rdark-terminal2

" Goyo and Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Custom highlights
function CustomHighlights()
  hi TabLine ctermbg=black ctermfg=234
  hi TabLineFill ctermbg=black ctermfg=234
  hi TabLineFill ctermbg=black ctermfg=234
  hi TabLineSel ctermbg=black ctermfg=yellow
  hi StatusLine ctermbg=130 ctermfg=233 cterm=bold
  hi StatusLineNC ctermbg=233 ctermfg=130
  hi Cursor ctermbg=233 ctermfg=130
  hi CursorColumn ctermbg=black ctermfg=130 cterm=bold
  hi CursorLine ctermbg=233
  hi LineNr ctermbg=black
  hi CursorLineNR ctermbg=233 ctermfg=130 cterm=inverse
  

  let g:limelight_conceal_ctermfg = 'gray'
  let g:limelight_conceal_ctermfg = 240
  let g:limelight_conceal_guifg = 'DarkGray'
  let g:limelight_conceal_guifg = '#777777'
endfunction

" Sort of hack to prevent plugins and themes overriding these preferences
command! CustomHighlights :execute ":call CustomHighlights()"

autocmd! User GoyoEnter CustomHighlights
autocmd! User GoyoLeave CustomHighlights 
autocmd! WinNew * CustomHighlights 

:execute ":call CustomHighlights()"

