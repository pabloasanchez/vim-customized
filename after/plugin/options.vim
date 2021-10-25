" options.vim - Additional vim options
" To reduce cluttering of vim.init

set ignorecase
set history=150                  "hi:    keep 50 lines of command line history

" Disables indenting and numbers on Terminal mode and limelight
if has('nvim') 
  
  if exists(':IndentLinesEnable')
    autocmd TermEnter term://* :IndentLinesDisable  
  endif
  
  autocmd TermEnter term://* :Limelight!
  " autocmd TermLeave  term://* :Limelight
  autocmd TermEnter term://* setlocal nonumber norelativenumber
endif

" Disables indenting lines on startify
if exists(':IndentLinesEnable')
  " Disable Startify
  autocmd User StartifyReady :IndentLinesDisable
  autocmd User StartifyAllBuffersOpened :IndentLinesEnable
  
  " Disable IndentLines for json
  autocmd FileType json :IndentLinesDisable
endif

" Avoid split windows
" autocmd WinNew * :only

" Maintain undo history between sessions
set undofile 
set undodir=~/.vim/undo

" IndentLine plugin      ¦, ┆, │, ⎸, or ▏
let g:indentLine_char = '⎸'
let g:indentLine_defaultGroup = 'SpecialKey'
" let g:indentLine_color_term = 110

" fzf overrides
" command! -bang -nargs=? -complete=dir GFiles call fzf#vim#gitfiles("-m")

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
" colorscheme orbital
" colorscheme angr
" colorscheme alduin
" colorscheme darkblue
" colorscheme afterglow
" colorscheme 256_noir
" colorscheme abstract
" colorscheme desert
" colorscheme one
" colorscheme ron
" colorscheme elflord
" colorscheme anderson

" Goyo and Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Custom highlights
function CustomHighlights()
  " for 'one' colorscheme
  " highlight CursorLine ctermbg=234

  " for 'darkblue'
  " hi StatusLine ctermbg=234 ctermfg=white
  " hi TabLine ctermbg=234 
  " hi Comment ctermfg=DarkBlue

  highlight TabLine ctermbg=black ctermfg=234
  highlight TabLineFill ctermbg=black ctermfg=234
  highlight TabLineFill ctermbg=black ctermfg=234
  " highlight TabLineSel ctermbg=215 ctermfg=black
  highlight TabLineSel ctermbg=234 ctermfg=yellow
  " hi StatusLine ctermbg=black ctermfg=215
  " hi StatusLineNC ctermbg=black ctermfg=234
  hi StatusLine ctermfg=yellow ctermbg=234
  hi StatusLineNC ctermbg=black ctermfg=234

  let g:limelight_conceal_ctermfg = 'gray'
  let g:limelight_conceal_ctermfg = 240

  " Color name (:help gui-colors) or RGB color
  let g:limelight_conceal_guifg = 'DarkGray'
  let g:limelight_conceal_guifg = '#777777'
endfunction

" Sort of hack to prevent plugins and themes overriding these preferences
command! CustomHighlights :execute ":call CustomHighlights()"

autocmd! User GoyoEnter CustomHighlights
autocmd! User GoyoLeave CustomHighlights 
autocmd! WinNew * CustomHighlights 

:execute ":call CustomHighlights()"

