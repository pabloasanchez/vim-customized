local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

local function button(sc, txt, keybind, keybind_opts)
  local b = dashboard.button(sc, txt, keybind, keybind_opts)
  b.opts.hl = "Delimiter"
  b.opts.hl_shortcut = "Identifier"
  return b
end

-- Set header
dashboard.section.header.val = {
  "                             ⠀⠀⠀⠀",
  "                             ⠀⠀⠀⠀",
  " ⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠁⠀⢹⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⣿⣿⣿⣿⣿⣿⣿⣿⢽⠋⣿⠏⠀⠀⠀⠀⠈⢻⣿⣿⠾⣾⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⠻⣿⣿⣿⣿⣿⣿⣿⣯⠄⢿⡆⠀⠀⠀⠀⢀⣾⣿⠃⠀⣱⠟⡀⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⢻⣿⣿⢿⣿⣟⣿⠽⠀⠸⣿⣶⣤⣶⣗⡿⣻⣿⠀⠀⢪⢚⠇⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⠈⠙⣺⢿⣿⣃⡀⢀⣠⣼⣿⣿⣿⣷⣿⣶⣿⣿⣦⣶⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⠉⠛⠋⠙⠋⠉⠛⠛⠿⠿⠛⠋⠑⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀",
  "          ⠀⠀⠀⠀⠀⠀⢀⢘⢿⢿⠻⡝⣮⠿⠟⠂⠀⠀⠀⠀⠀⠀⠀",
  "                             ⠀⠀⠀⠀",
  "                             ⠀⠀⠀⠀",
  "                             ⠀⠀⠀⠀",
}
dashboard.section.header.opts.hl = 'Identifier'
-- Set menu
dashboard.section.buttons.val = {
  button("e", "  New file", ":enew <BAR> Zen <ENTER>"),
  -- button("f", "  Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
  button("r", "  Recent", ":Recent <ENTER>"),
  button("l", "  Last Session", ":RestoreSession <ENTER>"),
  button("s", "  Settings", ":e ~/.vim"),
  button("q", "  Quit NVIM", ":qa <ENTER>"),
}


-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
