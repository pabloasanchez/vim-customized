local fn = vim.fn
local ui = vim.ui

function findInFiles()
  ui.input({ prompt = 'Find in files: ' }, function(input)
    if input then
      fn.execute(':Ag ' .. input)
    end
  end)
end

function findFiles()
  fn.execute(':Telescope find_files') --fzf Lines
end

function findInBuffers()
  fn.execute(':Lines') --fzf Lines
end

function findInBuffer()
  fn.execute(':Telescope current_buffer_fuzzy_find') 
end

function findResume()
  fn.execute(':Telescope resume') 
end

function findString()
  fn.execute(':Telescope grep_string') 
end

function liveGrep()
  fn.execute(':Telescope live_grep')
end

function marks()
  fn.execute(':Telescope marks')
end

function registers()
  fn.execute(':Telescope registers')
end

function commands()
  fn.execute(':Telescope commands')
end

function colorschemes()
  fn.execute(':Telescope colorscheme')
end

function highlights()
  fn.execute(':Telescope highlights')
end

function keymaps()
  fn.execute(':Telescope keymaps')
end

function autocommands()
  fn.execute(':Telescope autocommands')
end

function buffers()
  fn.execute(':Telescope buffers')
end

function recent()
  fn.execute(':Telescope oldfiles')
end

function commandHistory()
  fn.execute(':Telescope command_history')
end

function searchAndReplace()
  fn.execute(':Telescope search_history')
end

function searchHistory()
  fn.execute(':Telescope search_history')
end

function git()
  fn.execute(':FloatermNew --autoclose=1 --width=1.0 --height=1.0 --title=Git --disposable lazygit')
end

return { 
  git, keymaps, highlights, colorschemes, 
  searchHistory, commandHistory, commands, 
  autocommands, buffers, recent, 
  findFiles, findInFiles, findInBuffers, 
  findInBuffer, findResume, findString, liveGrep, marks, searchAndReplace
}
