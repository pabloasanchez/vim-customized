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


" install a 'File' menu, use [text, command] to represent an item.
call quickui#menu#install('Fi&nd', [
            \ [ "&Resume Last Find", 'Telescope resume', 'Lists the results incl. multi-selections of the previous picker' ],
            \ [ "--", '' ],
            \ [ "&Buffer", 'Telescope current_buffer_fuzzy_find', 'Live fuzzy search inside of the currently open buffer' ],
            \ [ "&Files\t;f", 'Telescope find_files', 'Lists files in your current working directory, respects .gitignore' ],
            \ [ "&Git Files\tCtrl+l", 'Telescope git_files', 'Fuzzy search through the output of git ls-files command, respects .gitignore' ],
            \ [ "Gr&ep String\tAlt+w", 'Telescope grep_string', 'Searches for the string under your cursor in your current working directory' ],
            \ [ "&Live Grep\tAlt+w", 'Telescope live_grep', 'Search for a string in your current working directory and get results live as you type (respecting .gitignore)' ],
            \ [ "--", '' ],
            \ [ "Buffers\t;Tab", 'Telescope buffers', 'Lists buffers' ],
            \ [ "Old Files\tCtrl+Backspace", 'Telescope old_files', 'Lists previously opened files' ],
            \ [ "Commands", 'Telescope commands', 'Lists available plugin/user commands and runs them on <cr>' ],
            \ [ "Command History\tSpace", 'Telescope command_history', 'Lists commands that were executed recently' ],
            \ [ "Search History", 'Telescope search_history', 'Lists searches that were executed recently' ],
            \ [ "Marks", 'Telescope marks', 'Lists vim marks and their value' ],
            \ [ "Color Schemes", 'Telescope colorscheme', 'Lists available colorschemes and applies them on <cr>' ],
            \ [ "Vim Options", 'Telescope vim_options', 'Lists vim options, allows you to edit the current value on <cr>' ],
            \ [ "Registers", 'Telescope registers', 'Lists vim registers, pastes the contents of the register on <cr>' ],
            \ [ "Autocommands", 'Telescope autocommands', 'Lists vim autocommands and goes to their declaration on <cr>' ],
            \ [ "Spelling Suggestions", 'Telescope spell_suggest', 'Lists spelling suggestions for the current word under the cursor' ],
            \ [ "Keymaps", 'Telescope keymaps', 'Lists normal mode keymappings' ],
            \ [ "Highlights", 'Telescope highlights', 'Lists highlights' ],
            \ ])


" script inside %{...} will be evaluated and expanded in the string
call quickui#menu#install("&Options", [
			\ ['Set &Spell %{&spell? "Off":"On"}', 'set spell!'],
			\ ['Set &Cursor Line %{&cursorline? "Off":"On"}', 'set cursorline!'],
			\ ['Set &Wrap %{&wrap? "Off":"On"}', 'set wrap!'],
			\ ])


call quickui#menu#install("&Tools", [
      \ [ "&File browser", 'Telescope file_browser'],
      \ [ "&Ranger", 'FloatermNew --autoclose=1 --width=0.8 --height=0.8 ranger'],
            \ [ "&Open File\tCtrl+l", '', 'Open a file with Ranger' ],
      \ [ "&Terminal", 'FloatermNew'],
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
