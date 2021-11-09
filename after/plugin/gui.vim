" clear all the menus
call quickui#menu#reset()

" Save as
function! SaveAs()
  call inputsave()
  let name = input("Save as: ", "", "file")
  call inputrestore()
  execute ":saveas " . name
endfunction

" border style
let g:quickui_border_style = 3

" color scheme
let g:quickui_color_scheme = 'system'

" install a 'File' menu, use [text, command] to represent an item.
call quickui#menu#install('&File', [
            \ [ "&New File\t:enew", 'enew', 'Create an empty buffer in same window' ],
            \ [ "&Open File\tCtrl+l", 'FloatermNew --autoclose=1 --width=0.8 --height=0.8 ranger', 'Open a file with Ranger' ],
            \ [ "&Close\tAlt+w", 'bd', 'Close current buffer' ],
            \ [ "--", '' ],
            \ [ "&Save\tCtrl+s", 'w', 'Save current buffer'],
            \ [ "Save &As...", 'call SaveAs()', 'Save buffer as...' ],
            \ [ "--", '' ],
            \ [ "E&xit\tCtrl+q", 'qa' ],
            \ ])

" items containing tips, tips will display in the cmdline
call quickui#menu#install('&Edit', [
            \ [ "&Copy\tyy", 'norm yy', 'Copy line' ],
            \ [ "&Paste\tp", 'norm p', 'Paste' ],
            \ [ "--", '' ],
            \ [ "Cl&ipboard\t;p", 'norm ;p', 'Clipboard with recent yanks' ],
            \ ])

" script inside %{...} will be evaluated and expanded in the string
call quickui#menu#install("&Option", [
			\ ['Set &Spell %{&spell? "Off":"On"}', 'set spell!'],
			\ ['Set &Cursor Line %{&cursorline? "Off":"On"}', 'set cursorline!'],
			\ ['Set &Wrap %{&wrap? "Off":"On"}', 'set wrap!'],
			\ ])

" register HELP menu with weight 10000
call quickui#menu#install('H&elp', [
			\ ["&Cheatsheet", 'help index', ''],
			\ ['T&ips', 'help tips', ''],
			\ ['--',''],
			\ ["&Tutorial", 'help tutor', ''],
			\ ['&Quick Reference', 'help quickref', ''],
			\ ['&Summary', 'help summary', ''],
			\ ], 10000)

" enable to display tips in the cmdline
let g:quickui_show_tip = 1

" hit space twice to open menu
noremap <A-f> :call quickui#menu#open()<cr>
