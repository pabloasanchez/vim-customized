" options.vim - Additional vim options
" To reduce cluttering of vim.init

" Plugin options
let g:floaterm_opener = 'edit'


" Color Scheme
colorscheme orbital
colorscheme one


" Auto Commands
autocmd! User GoyoEnter CustomHighlights
autocmd! User GoyoLeave CustomHighlights 
autocmd! WinNew * CustomHighlights 
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
autocmd TermEnter term://* :Limelight!
autocmd TermEnter term://* setlocal nonumber norelativenumber


" Custom highlights
" Sort of hack to prevent plugins and themes overriding these preferences
function CustomHighlights()
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
  
   let g:limelight_conceal_ctermfg = 'gray'
   let g:limelight_conceal_ctermfg = 240
   let g:limelight_conceal_guifg = 'DarkGray'
   let g:limelight_conceal_guifg = '#777777'
endfunction


" Commands
command! CustomHighlights :execute ":call CustomHighlights()"
command! Broot :FloatermNew --autoclose=1 --width=0.5 --height=0.4 --wintype=float --title=\  --borderchars=\ \ \ \ \ \ \ \  broot

:execute ":call CustomHighlights()"

