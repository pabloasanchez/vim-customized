-- Modal highlights (see autocommands.lua as well)
function insert()
  vim.cmd "hi LineNr ctermfg=red guifg=red"
  -- vim.api.nvim_set_hl(0, "LineNr", { ctermfg = "red" })
end

function normal()
  vim.cmd "hi LineNr ctermbg=black ctermfg=235 guibg=black guifg=#333333"
  -- vim.api.nvim_set_hl(0, "LineNr", { ctermfg = normalBackground })
end

vim.api.nvim_create_user_command("UserHighlightsInsert", insert, {})
vim.api.nvim_create_user_command("UserHighlightsNormal", normal, {})

-- Colorscheme
vim.cmd "colorscheme quiet-code"

