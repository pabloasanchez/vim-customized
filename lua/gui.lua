local fn = vim.fn

-- Reset quickui -- clear all menus
fn['quickui#menu#reset']()


fn['quickui#menu#install']("&File", { 
    { "&New File", "New", "Create an empty buffer in same window" },
    { "&Open...", 'FloatermNew --autoclose=1 --width=0.8 --height=0.8 ranger', 'Open a file with Ranger' },
    { "&Close", 'confirm bd', 'Close current buffer' },
    { "Close All", 'confirm %bd', 'Close current buffer' },
    { "--", '' },
    { "&Recent Files", 'Startify', 'Recent files'},
    { "--", '' },
    { "&Save", 'w', 'Save current buffer'},
    { "Save &As...", 'SaveAs', 'Save buffer as...' },
    { "--", '' },
    { "E&xit", 'confirm qa' },
})

fn['quickui#menu#install']("&Edit", { 
})

fn['quickui#menu#install']("F&ind", { 
})

fn['quickui#menu#install']("&Code", { 
})

fn['quickui#menu#install']("&Options", { 
})

fn['quickui#menu#install']("&Tools", { 
})

fn['quickui#menu#install']("&File", { 
})

vim.g.quickui_show_tip = 1
vim.g.quickui_border_style = 1
vim.g.quickui_color_scheme = "system"
