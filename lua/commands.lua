local fn = vim.fn
local ui = vim.ui

require('commands/common')
require('commands/lsp')
require('commands/find')
require('commands/git')

-- Wrappers

vim.api.nvim_create_user_command('New', new, {})
vim.api.nvim_create_user_command('Close', close, {})
vim.api.nvim_create_user_command('CloseAll', closeAll, {})
vim.api.nvim_create_user_command('CloseAll', closeAll, {})
vim.api.nvim_create_user_command('Hide', hide, {})
vim.api.nvim_create_user_command('Clipboard', clipboard, {})
vim.api.nvim_create_user_command('Recent', recent, {})
vim.api.nvim_create_user_command('Wrap', wrap, {})
vim.api.nvim_create_user_command('Glyph', glyph, {})
vim.api.nvim_create_user_command('Git', git, {})
vim.api.nvim_create_user_command('Tig', tig, {})
vim.api.nvim_create_user_command('Blame', blame, {})
vim.api.nvim_create_user_command('Help', help, {})
vim.api.nvim_create_user_command('Options', options, {})
vim.api.nvim_create_user_command('Menu', menu, {})
vim.api.nvim_create_user_command('Emmet', emmet, {})

vim.api.nvim_create_user_command('SaveSession', saveSession, { nargs = '*' })
vim.api.nvim_create_user_command('RestoreSession', restoreSession, { nargs = '*' })

vim.api.nvim_create_user_command('Split', split, {})

vim.api.nvim_create_user_command('Hover', lspHover, {})
vim.api.nvim_create_user_command('Rename', lspRename, {})
vim.api.nvim_create_user_command('LSPDiagNext', lspDiagNext, {})
vim.api.nvim_create_user_command('LSPDiagPrev', lspDiagPrev, {})
vim.api.nvim_create_user_command('LSPDiagToggle', lspDiagToggle, {})
vim.api.nvim_create_user_command('LSPDiagWindow', lspDiagWindow, {})
vim.api.nvim_create_user_command('Diag', lspDiagWindow, {})
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

vim.api.nvim_create_user_command('FindInBuffer', findInBuffer, {})
vim.api.nvim_create_user_command('FindInBuffers', findInBuffers, {})
vim.api.nvim_create_user_command('FindFiles', findFiles, {})
vim.api.nvim_create_user_command('FindInFiles', findInFiles, {})
vim.api.nvim_create_user_command('FindResume', findResume, {})
vim.api.nvim_create_user_command('FindString', findString, {})
vim.api.nvim_create_user_command('LiveGrep', liveGrep, {})
vim.api.nvim_create_user_command('Marks', marks, {})
vim.api.nvim_create_user_command('Buffers', buffers, {})
vim.api.nvim_create_user_command('Registers', registers, {})
vim.api.nvim_create_user_command('Recent', recent, {})
vim.api.nvim_create_user_command('Commands', commands, {})
vim.api.nvim_create_user_command('Autocommands', autocommands, {})
vim.api.nvim_create_user_command('CommandHistory', commandHistory, {})
vim.api.nvim_create_user_command('SearchHistory', searchHistory, {})
vim.api.nvim_create_user_command('Colorschemes', colorschemes, {})
vim.api.nvim_create_user_command('Highlights', highlights, {})
vim.api.nvim_create_user_command('Keymaps', keymaps, {})
vim.api.nvim_create_user_command('SearchAndReplace', searchAndReplace, {})

vim.api.nvim_create_user_command('Remove', removeFromLine, { nargs = 1 })
vim.api.nvim_create_user_command('Replace', replaceInLine, { nargs = '*' })

vim.api.nvim_create_user_command('QuickFix', showQuickFix, {})
vim.api.nvim_create_user_command('QuickFixHide', hideQuickFix, {})
vim.api.nvim_create_user_command('QuickFixToggle', toggleQuickFix, {})

vim.api.nvim_create_user_command('ArrangeBuffers', arrangeBuffers, {})
vim.api.nvim_create_user_command('BufferNext', nextVisibleBuffer, {})
vim.api.nvim_create_user_command('BufferPrev', prevVisibleBuffer, {})
vim.api.nvim_create_user_command('Spelling', spelling, {})
vim.api.nvim_create_user_command('Toggle Spelling', toggleSpelling, {})
vim.api.nvim_create_user_command('Toggle Cursor Line', toggleCursorLine, {})
vim.api.nvim_create_user_command('Zen', zen, {})
vim.api.nvim_create_user_command('Files', files, {})
vim.api.nvim_create_user_command('Quit', quit, {})


