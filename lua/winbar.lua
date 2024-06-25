local o = vim.o

o.winbar = ""
o.winbar = o.winbar .. "%="
o.winbar = o.winbar .. "%{&filetype=='no-neck-pain'?'':expand('%f')}"
o.winbar = o.winbar .. "%#WinBarInsert#"
o.winbar = o.winbar .. " %m "

