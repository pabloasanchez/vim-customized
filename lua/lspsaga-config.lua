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

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false,
    signs = true,
    update_in_insert = false,
  }
)
