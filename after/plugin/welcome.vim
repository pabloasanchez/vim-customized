" welcome.vim - Welcome anim with Chafa
"
:hi FloatermBorder guibg=black guifg=black

let g:floaterm_autoinsert=v:false
:if winwidth(0) >= 180
  :FloatermNew --name=logo --autoclose=2 --title=\  --width=0.3 --height=0.5 --disposable --position=top --borderchars=\ \ \ \ \ \ \ \  chafa ~/.vim/splash.gif --size 40x60 -c none --symbols braille --clear --duration 1.3
:endif 
let g:floaterm_autoinsert=v:true

