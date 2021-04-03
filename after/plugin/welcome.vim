" welcome.vim - welcome buffer configuration and floaterm anim w chafa

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


" Animated intro gif requires chafa. Use 2 colors (-c 2) for non black backgrounds
:hi FloatermBorder guibg=black guifg=black
:hi link FloatermNC StartifyHeader
" :hi link FloatermNC Title

let g:floaterm_autoinsert=v:false
:FloatermNew --name=logo --autoclose=2 --title=\  --width=0.15 --height=0.3 --disposable --position=top --borderchars=\ \ \ \ \ \ \ \  chafa ~/.vim/vim.gif -c 2 --clear --duration 1
let g:floaterm_autoinsert=v:true

