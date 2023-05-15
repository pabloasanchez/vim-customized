require('luasnip').config.set_config ({ 
  history = true,
  region_check_events = 'InsertEnter',
  delete_check_events = 'InsertLeave'
})

-- vim.api.nvim_set_keymap('i', '<Tab>',   [[pumvisible() ? '\<C-n>' : '\<Tab>']],   { expr = true })
-- vim.api.nvim_set_keymap('i', '<Tab>',   [[pumvisible() ? '\<C-n>' : luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>']],   { expr = true })
-- vim.api.nvim_set_keymap('i', '<Tab>',   [[luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : pumvisible() ? '\<C-n>' : '\<Tab>']],   { expr = true })
-- vim.api.nvim_set_keymap('i', '<Tab>',   [[luasnip#expand_or_locally_jumpable() ? '<Plug>luasnip-expand-or-jump' : pumvisible() ? '\<C-n>' : '\<Tab>']],   { expr = true })

-- vim.api.nvim_set_keymap('i', '<Tab>',   [[pumvisible() ? '\<C-n>' : luasnip#expand_or_locally_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>']],   { expr = true })
-- vim.api.nvim_set_keymap('i', '<S-Tab>', [[pumvisible() ? '\<C-p>' : '<cmd>lua require'luasnip'.jump(-1) <ENTER>']], { expr = true, noremap = true })
-- vim.api.nvim_set_keymap('i', '<C-Tab>', [['<Plug>luasnip-expand-or-locally-jump']], { expr = true, noremap = true })

vim.cmd [[
  snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
  snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
  imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
  smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
]]


