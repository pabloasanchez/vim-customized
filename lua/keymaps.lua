local map = vim.api.nvim_set_keymap
-- local map = vim.api.nvim_buf_set_keymap

-- map('n', '<leader>p', ':bprev<cr>', options)

options = { noremap = true }
map('n', '<F2>', "<cmd>Lspsaga rename<cr>", options)
map('n', '<F3>', ":lua =vim.lsp.buf.format()<cr>", options)
map('n', 'ga', "<cmd>Lspsaga code_action<cr>", options)
map('n', 'gd', "<cmd>Lspsaga lsp_finder<cr>", options)
map('n', 'gh', "<cmd>Lspsaga hover_doc<cr>", options)
map('n', 'gi', ":lua =vim.lsp.buf.implementation()<cr>", options)
map('n', 'gf', "<cmd>Lspsaga lsp_finder<cr>", options)
map('n', 'gj', "<cmd>Lspsaga diagnostic_jump_next<cr>", options)
map('n', 'gk', "<cmd>Lspsaga diagnostic_jump_prev<cr>", options)
map('n', 'gl', "<cmd>Lspsaga show_line_diagnostics<cr>", options)
map('n', 'go', "<cmd>Lspsaga show_cursor_diagnostics<cr>", options)
map('n', 'gt', "<cmd>Lspsaga implement<cr>", options)
map('n', 'gv', "<cmd>Lspsaga preview_definition<cr>", options)
map('n', 'gx', "<cmd>Lspsaga code_action<cr>", options)
map('x', 'gx', ":<c-u>Lspsaga range_code_action<cr>", options)
-- map('n', '<C-u>',"<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
-- map('n', '<C-d>',"<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
