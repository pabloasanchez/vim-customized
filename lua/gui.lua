local fn = vim.fn

fn['quickui#menu#reset']()           -- Reset quickui -- clear all menus

fn['quickui#menu#install']("&File", { 
    { "&New File", "New", "Create an empty buffer in same window" },
    { "&Open...", 'Files', 'Open a file with Ranger' },
    { "&Close", 'Close', 'Close current buffer' },
    { "Close All", 'CloseAll', 'Close current buffer' },
    { "--", '' },
    { "&Save", 'w', 'Save current buffer'},
    { "Save &As...", 'SaveAs', 'Save buffer as...' },
    { "--", '' },
    { "&Recent Files", 'Recent', 'Recent files'},
    { "--", '' },
    { "E&xit", 'Quit' },
})

fn['quickui#menu#install']("&Edit", { 
    { "&Copy", "y", "Copy" },
    { "&Paste", "p", "Paste" },
    { "Clip&board", "Clipboard", "Show clipboard" },
    { "--", '' },
    { "&Spelling Suggestions", "Spelling" },
})

fn['quickui#menu#install']("Fin&d", { 
    { "&Search/Replace", "SearchAndReplace", "Search and replace" },
    { "--", '' },
    { "&Resume Last Find", "FindResume", "Resume the last find" },
    { "&Word Under Cursor", "FindString", "Find git files" },
    { "--", '' },
    { "&In This Buffer", "FindInBuffer", "Find in this buffer" },
    { "In &Open Buffers", "FindInBuffers", "Find in open buffers" },
    { "&Buffers", "Buffers", "" },
    { "--", '' },
    { "I&n Files", "FindInFiles", "Find in files" },
    { "&Files", "FindFiles", "Find files" },
    { "--", '' },
    { "&Git", "Git", "Find git files" },
    { "--", '' },
    { "&Commands", "Commands", "" },
    { "Command &History", "CommandHistory", "" },
    { "&Autocommands", "Autocommands", "" },
    { "--", '' },
    { "&Marks", "Marks", "" },
    { "&Registers", "Registers", "Show registers" },
    { "--", '' },
    { "Search History", "SearchHistory", "" },
})

fn['quickui#menu#install']("&Code", { 
  { "&Format", "FormatCode" },
  { "&Rename", "Rename", "Rename symbol under cursor" },
  { "&Hover", "Hover", "Hover documentation" },
  { "Code &Action", "CodeAction", "Code Action"},
  { "--",''},
  { "&Peek Definition", "Peek", ""},
  { "&Definitions", "Definitions", "Definitions under cursor"},
  { "&Type Definitions", "TypeDefs", "Type definitions"},
  { "--",''},
  { "Dia&gnostics Toggle", "LSPDiagToggle", "Diagnostics toggle"},
  { "Diagnostics &Window", "LSPDiagWindow", "Diagnostics window"},
  { "&Line Diagnostics", "LSPLineDiag", "Diagnostics"},
  { "&Next Diagnostic", "LSPDiagNext", ""},
  { "&Prev Diagnostic", "LSPDiagPrev", ""},
  { "--",''},
  { "&Implementation", "Implementation", "Implementation under cursor"},
  { "Re&ferences", "References", "References under cursor"},
  { "&Symbols", "Symbols", "Symbols"},
  { "--",''},
  { "&Outline", "Outline", "Outline"},
})

fn['quickui#menu#install']("&Options", { 
    { "Set &Spell %{&spell? 'Off':'On'}", "ToggleSpelling"},
    { "Set &Cursor Line %{&cursorline? 'Off':'On'}", "ToggleCursorLine"},
    { "Set &Wrap %{&wrap? 'Off':'On'}", "Wrap"},
    { "--", '' },
    { "&Options", "Options", "Set options" },
    { "--", '' },
    { "&Colorschemes", "Colorschemes", "" },
    { "&Highlights", "Highlights", "" },
    { "&Keymaps", "Keymaps", "Key maps" },
})

fn['quickui#menu#install']("&Help", { 
  { "&Help", "Help", "" },
  { "--", '' },
  { "&Cheatsheet", "help index", "" },
  { "&Tutorial", "help tutor", "" },
  { "&Quick Reference", "help quickref", "" },
  { "&Summary", "help summary", "" },
})


vim.g.quickui_show_tip = 1
vim.g.quickui_border_style = 1
vim.g.quickui_color_scheme = "system"
