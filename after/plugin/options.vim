" options.vim - Additional vim options
" To reduce cluttering of vim.init

set ignorecase
set history=150                  "hi:    keep 50 lines of command line history

" Disables indenting and numbers on Terminal mode
if has('nvim') 
  autocmd TermEnter term://* :IndentLinesDisable  
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
let g:indentLine_char = '┆'
let g:indentLine_defaultGroup = 'SpecialKey'
" let g:indentLine_color_term = 110

" Shows hidden chars
set lcs=tab:»_,trail:·,space:·
set list

" Colors / Color Schemes
" colorscheme angr
" colorscheme orbital
colorscheme alduin
" colorscheme afterglow
" colorscheme 256_noir
" colorscheme abstract
" colorscheme desert
" colorscheme one
" colorscheme ron
" colorscheme elflord
" colorscheme anderson

" Custom highlights
" for 'one' colorscheme
" highlight CursorLine ctermbg=234
" highlight TabLine ctermbg=234

" NERDTree 
" let g:NERDTreeWinPos = "right"
" let g:NERDTreeWinSize=60
" let g:nerdtree_tabs_autofind=1
" let g:nerdtree_tabs_focus_on_files=1
" autocmd BufRead * NERDTreeFind | NERDTreeMirror | wincmd p
" autocmd BufWinLeave * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

