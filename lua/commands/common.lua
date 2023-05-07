local fn = vim.fn

function new()
  vim.cmd('enew')
end

function saveAs()
  ui.input({ prompt = 'Save file as: ' }, function(input)
    if input then
      fn.execute(':saveas ' .. input)
    end
  end)
end

function close()
  fn.execute(':confirm bd')
end

function closeAll()
  fn.execute(':confirm %bd')
end

function clipboard()
  fn.execute(':Telescope neoclip theme=cursor')
end

function recent()
  fn.execute(':Telescope oldfiles')
end

function back()
  -- fn.execute(':exe \'normal \<c-w>\<c-w>\'') --fzf Lines
end

function git()
  fn.execute(':FloatermNew --autoclose=1 --width=1.0 --height=1.0 --title=Git --disposable lazygit')
end

function glyph()
  fn.execute(':Telescope glyph') 
end

function help()
   fn.execute(':Telescope help_tags')
end

function removeFromLine(opts)
  fn.execute(':s/' .. opts.args .. '/')
end

function replaceInLine(opts)
   fn.execute(':s/' .. opts.fargs[1] .. '/' .. opts.fargs[2])
end

function arrangeBuffers() 
  -- local buf = vim.api.nvim_win_get_buf(0)
  local wins = vim.api.nvim_tabpage_list_wins(0)
  local listed = vim.bo[0].buflisted
  if #wins == 1 then
    require("zen-mode.view").open()
    -- fn.execute(':ZenMode')
  end
end

function zen() 
  fn.execute(':ZenMode')
end

function terminal()
  fn.execute(':FloatermToggle terminal')
end

function files()
  fn.execute(':FloatermNew --autoclose=1 --width=0.8 --height=0.8 ranger')
end

function wrap()
  fn.execute(':set wrap!')
end

return { closeAll, close, files, zen, new, clipboard, recent, wrap, saveAs, back, glyph, git, help, removeFromLine, replaceInLine, terminal, arrangeBuffers }
