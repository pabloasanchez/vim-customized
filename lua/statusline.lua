local fn = vim.fn
local o = vim.o
local cmd = vim.cmd

function gitstatus()
    return fn.col(".")
end

function format(item, exclude, hi)
  return "%#" .. hi .. "#%{&filetype=='" .. exclude .. "'?'':" .. item .. "}"
end

vim.opt.laststatus = 3

o.statusline = ""
o.statusline = o.statusline .. "%="
-- o.statusline = o.statusline .. "%#PmenuSel#"         -- Coloring, place before each concat or use format() above
o.statusline = o.statusline .. "%{mode(1)==#'i'?' ﱣ ':''}"
o.statusline = o.statusline .. "%m "
o.statusline = o.statusline .. "%{&fileencoding?&fileencoding:&encoding} "
o.statusline = o.statusline .. "%p%% "
o.statusline = o.statusline .. "%l:%c"

