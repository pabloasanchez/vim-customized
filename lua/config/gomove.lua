local map = vim.api.nvim_set_keymap

require('gomove').setup {
  -- whether or not to map default key bindings, (true/false)
  map_defaults = false,
  -- whether or not to reindent lines moved vertically (true/false)
  reindent = false,
  -- whether or not to undojoin same direction moves (true/false)
  undojoin = true,
  -- whether to not to move past end column when moving blocks horizontally, (true/false)
  move_past_end_col = true,
}

map( 'n', '<A-h>', '<Plug>GoNSMLeft', {} )
map( 'n', '<A-l>', '<Plug>GoNSMRight', {} )
map( 'n', '<C-j>', '<Plug>GoNSMDown', {} )
map( 'n', '<C-k>', '<Plug>GoNSMUp', {} )

-- map( 'n', '<C-h>', '<Plug>GoNSDLeft', {} )
-- map( 'n', '<C-l>', '<Plug>GoNSDRight', {} )
map( 'n', '<C-A-j>', '<Plug>GoNSDDown', {} )
map( 'n', '<C-A-k>', '<Plug>GoNSDUp', {} )

map( 'x', '<C-h>', '<Plug>GoVMBlockLeft', {} )
map( 'x', '<C-j>', '<Plug>GoVMBlockDown', {} )
map( 'x', '<C-k>', '<Plug>GoVMBlockUp', {} )
map( 'x', '<C-l>', '<Plug>GoVMBlockRight', {} )
