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
  fn.execute(':confirm BD') -- vim-bufkill
end

function closeAll()
  fn.execute(':confirm %bd')
end

function clipboard()
  fn.execute(':Telescope neoclip theme=cursor')
end

function hide()
  -- vim.cmd [[
  --       let [i, n; empty] = [1, bufnr('$')]
  --   while i <= n
  --       if bufexists(i) && bufname(i) == ''
  --           call add(empty, i)
  --       endif
  --       let i += 1
  --   endwhile
  --   if len(empty) > 0
  --       exe 'bwipeout' join(empty)
  --   endif
  -- ]]
  fn.execute(':silent! hide')
  fn.execute(':silent! FloatermHide')
end

function back()
  -- fn.execute(':exe \'normal \<c-w>\<c-w>\'') --fzf Lines
end

function glyph()
  fn.execute(':Telescope glyph')
end

function help()
  fn.execute(':Telescope help_tags')
end

function options()
  fn.execute(':Telescope vim_options')
end

function menu()
  fn.execute(':call quickui#menu#open()')
end

function spelling()
  fn.execute(':Telescope spell_suggest')
end

function toggleSpelling()
  fn.execute(':set spell!')
end

function toggleCursorLine()
  fn.execute(':set cursorline!')
end

function quit()
  fn.execute(':confirm qa')
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
    -- require("zen-mode.view").open()
    fn.execute(':Zenmode')
  end
end

function nextVisibleBuffer()
  vim.cmd [[
  let operation = "bnext"
  execute operation
  " if (len(win_findbuf(bufnr('%'))) > 1)
  "   execute operation
  " endif
  ]]
end

function prevVisibleBuffer()
  vim.cmd [[
  let operation = "bprev"
  execute operation
  " if (len(win_findbuf(bufnr('%'))) > 1)
  "   execute operation
  " endif
  ]]
end

function zen()
  if (vim.g.zenmode == 0) then
    print("Saving session...")
    fn.execute(':SaveSession')
  end

  fn.execute(':only')
  fn.execute(':Zenmode')

  if (vim.g.zenmode == 0) then
    print("Restoring session...")
    fn.execute(':RestoreSession')
  end

  -- print(vim.g.zenmode)
end

function split()
  fn.execute(':ZenmodeClose')
  fn.execute(':vsplit')
end

function saveSession(opts)
  local dir = string.gsub(vim.fn.getcwd(), "/", "_")
  if (opts.fargs[1] == nil) then
    fn.execute(':mksession! /tmp/.nvim.session.' .. dir)
  else
    fn.execute(':mksession! /tmp/.nvim.session.' .. dir .. opts.fargs[1])
  end
end

function restoreSession(opts)
  local dir = string.gsub(vim.fn.getcwd(), "/", "_")
  if (opts.fargs[1] == nil) then
    fn.execute(':source /tmp/.nvim.session.' .. dir)
  else
    fn.execute(':source /tmp/.nvim.session.' .. dir .. opts.fargs[1])
  end
end

function emmet()
  fn.execute(':.!emmet')
  fn.execute(':norm `[v`]')
  fn.execute(':norm =')
end

function terminal()
  fn.execute(':FloatermToggle terminal')
end

function files()
  fn.execute(':FloatermNew --autoclose=1 --width=0.8 --height=0.8 --title=Files --disposable ranger')
end

function wrap()
  fn.execute(':set wrap!')
end

return {
  hide, quit, closeAll,
  close, files, zen, new,
  clipboard, wrap, saveAs,
  back, glyph, help, menu,
  removeFromLine, replaceInLine, terminal,
  arrangeBuffers, nextVisibleBuffer, prevVisibleBuffer, options, spelling, toggleSpelling,
  saveSession, restoreSession,
  split
}
