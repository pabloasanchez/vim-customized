local fn = vim.fn
local ui = vim.ui

local common = require('commands/common')
local common = require('commands/lsp')
local common = require('commands/find')

-- Wrappers

vim.api.nvim_create_user_command('New', new, {})
vim.api.nvim_create_user_command('Close', close, {})
vim.api.nvim_create_user_command('CloseAll', closeAll, {})
vim.api.nvim_create_user_command('SaveAs', saveAs, {})
vim.api.nvim_create_user_command('Clipboard', clipboard, {})
vim.api.nvim_create_user_command('Recent', recent, {})
vim.api.nvim_create_user_command('Wrap', wrap, {})
vim.api.nvim_create_user_command('Glyph', glyph, {})
vim.api.nvim_create_user_command('Git', git, {})
vim.api.nvim_create_user_command('Help', help, {})

vim.api.nvim_create_user_command('Hover', lspHover, {})
vim.api.nvim_create_user_command('Rename', lspRename, {})
vim.api.nvim_create_user_command('LSPDiagNext', lspDiagNext, {})
vim.api.nvim_create_user_command('LSPDiagPrev', lspDiagPrev, {})
vim.api.nvim_create_user_command('LSPLineDiag', lspLineDiagnostics, {})
vim.api.nvim_create_user_command('Peek', lspPeek, {})
vim.api.nvim_create_user_command('FormatCode', lspFormat, {})
vim.api.nvim_create_user_command('Implementation', lspImplementation, {})
vim.api.nvim_create_user_command('CodeAction', lspCodeAction, {})
vim.api.nvim_create_user_command('Definitions', lspDefinitions, {})
vim.api.nvim_create_user_command('References', lspReferences, {})
vim.api.nvim_create_user_command('Outline', lspOutline, {})
vim.api.nvim_create_user_command('Symbols', lspSymbols, {})
vim.api.nvim_create_user_command('TypeDefs', lspTypeDefs, {})

vim.api.nvim_create_user_command('FindInBuffers', findInBuffers, {})
vim.api.nvim_create_user_command('FindInFiles', findInFiles, {})
vim.api.nvim_create_user_command('FindInBuffer', findInBuffer, {})
vim.api.nvim_create_user_command('FindResume', findResume, {})
vim.api.nvim_create_user_command('LiveGrep', liveGrep, {})
vim.api.nvim_create_user_command('Marks', marks, {})

vim.api.nvim_create_user_command('Remove', removeFromLine, { nargs = 1 })
vim.api.nvim_create_user_command('Replace', replaceInLine, { nargs = '*' })

vim.api.nvim_create_user_command('ArrangeBuffers', arrangeBuffers, {})
vim.api.nvim_create_user_command('Zen', zen, {})
vim.api.nvim_create_user_command('Files', files, {})


