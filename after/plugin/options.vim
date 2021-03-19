" options.vim - Additional vim options
" To reduce cluttering of vim.init

set ignorecase

" For Floaterm, create a background terminal that can be toggled and
" open :GitFiles on Vim Enter.
" autocmd VimEnter * :FloatermNew --autoclose=1 --width=1.0 --height=1.0 ranger " Automatically open ranger fullscreen on startup
autocmd VimEnter * :FloatermNew --autoclose=1 --title=Files ranger
execute ":FloatermNew --title=Terminal --name=terminal --autoclose=2 --silent"

" Maintain undo history between sessions
set undofile 
set undodir=~/.vim/undo

