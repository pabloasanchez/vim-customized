" options.vim - Additional vim options
" To reduce cluttering of vim.init

set ignorecase
set history=150                  "hi:    keep 50 lines of command line history

      " \ '                               ',
      " \ '                               ',
      " \ '     ▄▄                        ',
      " \ '   ▄████░ ▓█░ ▄█ ▓█            ',
      " \ '  ▓▓█░▀███▀  ██▀               ',
      " \ '   ░▓▄ ▒██  ▓█▒ ▀██▄ ▄ ▄▄ ▄▄   ',
      " \ '    ░ ░▓██  ██▒ ░██░ █▐█████▒  ',
      " \ '       ░▒▓█▐█░  ▓██░ ██░█▓░█▒  ',
      " \ '        ░▒▓█▓░  ▓█▓░ ▓█ █ ░█▒  ',
      " \ '         ░▓█░   ▓█▒░ ▓▒ ▓ ░▓▒  ',
      " \ '         ░▒░░    ▓░░ ▒░ ▒ ░▓▒  ',
      " \ '          ▒░     ▒░  ▒░ ▒ ░░▒  ',
      " \ '          ░      ░   ░  ░  ░░  ',
      " \ '                            ░  ',
      " \ '                               ',
      " \ '                               ',
      " \ '                               ',
      " \ '                               ',
      " \ '                               ',


let g:ascii = [
      \ '                              ',
      \ '    ▄▄                        ',
      \ '  ▄████▄ ▄█▀ ▄█ ██            ',
      \ '  ██ ▀███▀  ██▀               ',
      \ '   █▄  ██  ███ ▀██▄ ▄ ▄▄ ▄▄   ',
      \ '      ███  ███ ████ █▐██▌██▄  ',
      \ '       ███▐██  ████ ████████  ',
      \ '       ██████  ████ ██ █ ███  ',
      \ '        ████   ████ ██ █ ███  ',
      \ '         ██     ██  ██ █ ███  ',
      \ '         █      █   █  █  ██  ',
      \ '                           █  ',
      \ '                              ',
      \ '                              ',
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
  autocmd TermEnter term://* setlocal nonumber norelativenumber
endif
" autocmd TermLeave term://* :set number number

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
let g:indentLine_char = '⎸'
let g:indentLine_defaultGroup = 'SpecialKey'
" let g:indentLine_color_term = 110

" Shows hidden chars
set lcs=tab:»_,trail:·,space:·
set list

" Colors / Color Schemes
" colorscheme angr
" colorscheme orbital
" colorscheme alduin
" colorscheme afterglow
" colorscheme 256_noir
" colorscheme abstract
 " colorscheme desert
" colorscheme one
" colorscheme ron
colorscheme elflord

" Animated intro gif requires chafa. Use 2 colors (-c 2) for non black backgrounds
:hi FloatermBorder guibg=black guifg=black
:hi link FloatermNC Title

let g:floaterm_autoinsert=v:false
:FloatermNew --name=logo --autoclose=2 --title=\  --width=0.15 --height=0.3 --disposable --position=top --borderchars=\ \ \ \ \ \ \ \  chafa ~/.vim/vim.gif -c 2 --clear --duration 3
let g:floaterm_autoinsert=v:true

