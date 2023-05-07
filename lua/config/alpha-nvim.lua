local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

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

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button("e", "  > New file", ":enew <BAR> Zen <ENTER>"),
  -- dashboard.button("f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
  dashboard.button("r", "  > Recent", ":Recent <ENTER>"),
  dashboard.button("s", "  > Settings", ":e ~/.vim"),
  dashboard.button("q", "  > Quit NVIM", ":qa <ENTER>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
