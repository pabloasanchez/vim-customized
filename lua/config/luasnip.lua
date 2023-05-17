require('luasnip').config.set_config ({ 
  history = true,
  region_check_events = 'InsertEnter',
  delete_check_events = 'InsertLeave'
})

-- Some extra mappings only for luasnip
vim.cmd [[
  snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
  snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
  inoremap <expr> <C-Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
  imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
  smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
]]

-- vim.api.nvim_set_keymap('i', '<Tab>',   [[luasnip#expand_or_locally_jumpable() ? '<Plug>luasnip-expand-or-jump' : pumvisible() ? "\<C-n>" : "\<Tab>"]],   { expr = true })

