require("luasnip").config.set_config ({ 
  history = true,
  region_check_events = 'InsertEnter',
  delete_check_events = 'InsertLeave'
})

-- vim.api.nvim_set_keymap('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]],   { expr = true })
-- vim.api.nvim_set_keymap('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>']],   { expr = true })
-- vim.api.nvim_set_keymap('i', '<Tab>',   [[luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : pumvisible() ? "\<C-n>" : "\<Tab>"]],   { expr = true })
-- vim.api.nvim_set_keymap('i', '<Tab>',   [[luasnip#expand_or_locally_jumpable() ? '<Plug>luasnip-expand-or-jump' : pumvisible() ? "\<C-n>" : "\<Tab>"]],   { expr = true })
vim.api.nvim_set_keymap('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : luasnip#expand_or_locally_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>']],   { expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "<cmd>lua require'luasnip'.jump(-1) <ENTER>"]], { expr = true, noremap = true })
vim.api.nvim_set_keymap('i', '<C-Tab>', [['<Tab>']], { expr = true })

vim.cmd [[
  snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
  snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
  imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
  smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
]]

local keys = {
  ['cr']        = vim.api.nvim_replace_termcodes('<CR>', true, true, true),
  ['ctrl-y']    = vim.api.nvim_replace_termcodes('<C-y>', true, true, true),
  ['ctrl-y_cr'] = vim.api.nvim_replace_termcodes('<C-y><CR>', true, true, true),
}

_G.cr_action = function()
  if vim.fn.pumvisible() ~= 0 then
    -- If popup is visible, confirm selected item or add new line otherwise
    local item_selected = vim.fn.complete_info()['selected'] ~= -1
    return item_selected and keys['ctrl-y'] or keys['ctrl-y_cr']
  else
    -- If popup is not visible, use plain `<CR>`. You might want to customize
    -- according to other plugins. For example, to use 'mini.pairs', replace
    -- next line with `return require('mini.pairs').cr()`
    -- require('luasnip').jump(1)
    return keys['cr']
  end
end

vim.api.nvim_set_keymap('i', '<CR>', 'v:lua._G.cr_action()', { noremap = true, expr = true })
