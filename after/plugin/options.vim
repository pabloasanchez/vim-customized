" options.vim - Additional vim options
" To reduce cluttering of vim.init

set ignorecase
set history=150                  "hi:    keep 50 lines of command line history

let g:ascii = [
      \ '                             ',
      \ '                             ',
      \ '                             ',
      \ '             ██▓             ', 
      \ '                             ',
      \ '    ██▒   █▓ ██▓ ███▄ ▄███▓  ', 
      \ '   ▓██░   █▒▓██▒▓██▒▀█▀ ██▒  ',
      \ '    ▓██  █▒░▒██▒▓██▒   ▓██░  ',
      \ '    ▓██  █▒░▒██▒▓██░   ▓██░  ',
      \ '    ▒██ █░░░██░▒ ██░   ▒██░  ',
      \ '     ▒▀█░  ░██░▒ ██▒   ░██▒  ',
      \ '     ░ ▐░  ░▓  ░ ▒░   ░  ▓   ',
      \ '     ░ ░░   ▒  ░  ░      ░   ',
      \ '       ░░   ▒  ░      ░      ',
      \ '        ░   ░         ░      ',
      \ '        ░                    ',
      \ '                             ',
      \ '                             ',
      \ '                             ',
      \ ]

let g:startify_custom_header = startify#center(g:ascii)

" For Floaterm, create a background terminal that can be toggled and
" open :GitFiles on Vim Enter.
" autocmd VimEnter * :FloatermNew --autoclose=1 --width=1.0 --height=1.0 ranger " Automatically open ranger fullscreen on startup
" autocmd VimEnter * :FloatermNew --autoclose=1 --title=Files --position=left --wintype=vsplit --disposable --width=0.6 ranger
" autocmd TermEnter term://* :IndentLinesDisable
" autocmd TermLeave term://* :IndentLinesEnable
" autocmd TermEnter term://* :set number nonumber
" autocmd TermLeave term://* :set number number
if has('nvim') 
  autocmd TermEnter term://* :IndentLinesDisable  
endif

if has('nvim') 
  autocmd TermOpen term://* setlocal nonumber norelativenumber
endif

" Disables indenting lines on startify
if exists(':IndentLinesEnable')
  autocmd User StartifyReady :IndentLinesDisable
  autocmd User StartifyAllBuffersOpened :IndentLinesEnable
endif

" Avoid split windows
" autocmd WinNew * :only

" Maintain undo history between sessions
set undofile 
set undodir=~/.vim/undo

" IndentLine plugin
" ¦, ┆, │, ⎸, or ▏
let g:indentLine_char = '┆'
let g:indentLine_defaultGroup = 'SpecialKey'
" let g:indentLine_color_term = 110

" Shows hidden chars
set lcs=tab:»_,trail:·,space:·
set list

" Colors / Color Schemes
" colorscheme angr
colorscheme orbital
" colorscheme alduin

" Animated logo requires chafa 
:hi FloatermBorder guibg=black guifg=black
" Use 2 colors (-c 2) for non black backgrounds
:FloatermNew --name=logo --autoclose=1 --title=\  --width=0.2 --height=0.4 --disposable --position=top --borderchars=\ \ \ \ \ \ \ \  chafa ~/.vim/animated-logo-2.gif -c 16 --clear --duration 2

