local fn = vim.fn
function findInFiles()
  ui.input({ prompt = 'Find in files: ' }, function(input)
    if input then
      fn.execute(':Ag ' .. input)
    end
  end)
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


function liveGrep()
  fn.execute(':Telescope live_grep')
end

function marks()
  fn.execute(':Telescope marks')
end

return { findInFiles, findInBuffers, findInBuffer, findResume, liveGrep, marks }
