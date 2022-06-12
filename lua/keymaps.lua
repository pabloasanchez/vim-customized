local map = vim.api.nvim_set_keymap

-- nnoremap <silent> gh :Lspsaga lsp_finder<CR>
-- nnoremap <silent><leader>ca :Lspsaga code_action<CR>
-- vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
-- nnoremap <silent>K :Lspsaga hover_doc<CR>
-- nnoremap <silent> gs :Lspsaga signature_help<CR>
-- nnoremap <silent>gr :Lspsaga rename<CR>
-- nnoremap <F2> :Lspsaga rename<CR>
-- nnoremap <silent> gd :Lspsaga preview_definition<CR>

options = { noremap = true }
map('n', 'gh', ':Lspsaga lsp_finder<ENTER>', options)
map('n', '<leader>ca', ':Lspsaga code_action<ENTER>', options)
map('v', '<leader>ca', ':Lspsaga range_code_action<ENTER>', options)
map('n', 'K', ':Lspsaga hover_doc<ENTER>', options)
map('n', 'gs', ':Lspsaga signature_help<ENTER>', options)
map('n', 'gs', ':Lspsaga rename<ENTER>', options)
map('n', 'gd', ':Lspsaga preview_definition<ENTER>', options)
-- map('n', '<leader>p', ':bprev<cr>', options)
