" clear all the menus
call quickui#menu#reset()

" Save as
function! SaveAs()
  call inputsave()
  let name = input("Save as: ", "", "file")
  call inputrestore()
  execute ":saveas " . name
endfunction

" install a 'File' menu, use [text, command] to represent an item.
call quickui#menu#install('&File', [
            \ [ "&New File\t:enew", 'enew', 'Create an empty buffer in same window' ],
            \ [ "&Open...\tCtrl+l", 'FloatermNew --autoclose=1 --width=0.8 --height=0.8 ranger', 'Open a file with Ranger' ],
            \ [ "&Close\tAlt+w", 'confirm bd', 'Close current buffer' ],
            \ [ "Close All", 'confirm %bd', 'Close current buffer' ],
            \ [ "--", '' ],
            \ [ "&Recent Files", 'Startify', 'Recent files'],
            \ [ "--", '' ],
            \ [ "&Save\tCtrl+s", 'w', 'Save current buffer'],
            \ [ "Save &As...", 'call SaveAs()', 'Save buffer as...' ],
            \ [ "--", '' ],
            \ [ "E&xit\tCtrl+q", 'confirm qa' ],
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
            \ [ "&Resume Last Find\t;ff", 'Telescope resume', 'Lists the results incl. multi-selections of the previous picker' ],
            \ [ "--", '' ],
            \ [ "In this &Buffer\tCtrl+f", 'Telescope current_buffer_fuzzy_find', 'Live fuzzy search inside of the currently open buffer' ],
            \ [ "In &Open Buffers\t;l", 'Lines', 'Search inside open buffers' ],
            \ [ "&In Files (Ripgrep)\tAlt+f", 'Rg', 'Search inside files in your current working directory, respects .gitignore' ],
            \ [ "&Files (Live Grep)", 'Telescope find_files', 'Search files in your current working directory, respects .gitignore' ],
            \ [ "&Git Files", 'Telescope git_files', 'Fuzzy search through the output of git ls-files command, respects .gitignore' ],
            \ [ "Gr&ep String", 'Telescope grep_string', 'Searches for the string under your cursor in your current working directory' ],
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
			\ ['Toggle &AutoPairs', 'call AutoPairsToggle()'],
			\ ])


call quickui#menu#install("&Code", [
			\ ["Symbol &Rename\tF2", 'Lspsaga rename', 'Rename symbol under cursor'],
			\ ["Symbols &Outline\tgo", 'SymbolsOutline', 'Outline'],
			\ ["&Line Diagnostics\tgl", 'Lspsaga show_line_diagnostics', 'Diagnostics'],
			\ ["--",''],
			\ ["&Format code\tF3", 'lua =vim.lsp.buf.format()', 'Format code'],
			\ ["--",''],
			\ ["Code &Action\tga", 'Lspsaga code_action', 'Code Action'],
			\ ["&Definition\tgd", 'Lspsaga lsp_finder', 'Definition under cursor'],
			\ ["LS&P Finder\tgf", 'Lspsaga lsp_finder', 'LSP finder'],
			\ ["&Hover Documentation\tgh", 'Lspsaga hover_doc', 'Documentation'],
			\ ["&Implementation\tgi", 'lua =vim.lsp.buf.implementation()', 'Implementation under cursor'],
			\ ["&References\tgr", 'Telescope lsp_references', 'References under cursor'],
      \ ["Pre&view Definition\tgv", 'Lspsaga preview_definition', ''],
			\ ["--",''],
      \ ["Telescope References\tgr", ''],
      \ ["Telescope Symbols\tgs", ''],
			\ ])


call quickui#menu#install("&Tools", [
			\ ['&Welcome', 'Startify'],
			\ ['&Clock', 'ClockOn'],
			\ ['--',''],
      \ [ "&Ranger\t;r", 'FloatermNew --autoclose=1 --width=0.8 --height=0.8 ranger'],
      \ [ "&Terminal\t;t", 'FloatermNew'],
			\ ['--',''],
      \ [ "C&ycle replace\tCtrl+Alt+l", '', 'Ctrl+Alt+l'],
      \ ])


" register HELP menu with weight 10000
call quickui#menu#install('H&elp', [
			\ ["&Cheatsheet", 'help index', ''],
			\ ["&Tutorial", 'help tutor', ''],
			\ ['&Quick Reference', 'help quickref', ''],
			\ ['&Summary', 'help summary', ''],
			\ ], 10000)


" enable to display tips in the cmdline
let g:quickui_show_tip = 1

" border style
let g:quickui_border_style = 2
let quickui_border_style = 2

" color scheme
let g:quickui_color_scheme = 'system'

