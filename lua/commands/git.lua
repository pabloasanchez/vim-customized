local fn = vim.fn
local ui = vim.ui

function git()
  fn.execute(':FloatermNew --autoclose=1 --width=1.0 --height=1.0 --title=Git --disposable lazygit')
end

function tig()
  fn.execute(':FloatermNew --autoclose=1 --width=1.0 --height=1.0 --title=Git --disposable tig')
end

function blame()
  fn.execute(':FloatermNew --autoclose=1 --width=1.0 --height=1.0 --title=Git --disposable tig ' .. vim.fn.expand('%'))
end

return { 
  git, tig, blame
}
