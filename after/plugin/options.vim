" options.vim - Additional vim options
" To reduce cluttering of vim.init

set ignorecase

" For Floaterm, create a background terminal that can be toggled and
" open :GitFiles on Vim Enter.
" autocmd VimEnter * :FloatermNew --autoclose=1 --width=1.0 --height=1.0 ranger " Automatically open ranger fullscreen on startup
autocmd VimEnter * :FloatermNew --autoclose=1 --title=Files --position=right --wintype=vsplit --disposable --width=0.5 ranger
execute ":FloatermNew --title=Terminal --name=terminal --autoclose=2 --silent fish"

" Disables indenting lines on startify
autocmd User StartifyReady :IndentLinesDisable
autocmd User StartifyAllBuffersOpened :IndentLinesEnable

" Avoid split windows
autocmd WinNew * :only

" Maintain undo history between sessions
set undofile 
set undodir=~/.vim/undo

" IndentLine plugin
let g:indentLine_char = '⎸'
let g:indentLine_color_term = 90

" Shows hidden chars
set lcs=tab:»_,trail:·,space:·
set list

" Colors / Color Schemes
colorscheme orbital

