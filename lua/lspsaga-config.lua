require('lspsaga').setup { 
  max_preview_lines = 15,
  finder_action_keys = {
    open = '<Enter>',
    vsplit = 's',
    split = 'i',
    quit = '<Esc>',
    -- scroll_down = "<C-j>",
    -- scroll_up = "<C-k>",
  },
  code_action_keys = {
    quit = '<Esc>',
    exec = '<CR>',
  },
  rename_action_keys = {
    quit = '<Esc>',
    exec = '<CR>',
  },
  border_style = 'double',
  highlight_prefix = true,
}
