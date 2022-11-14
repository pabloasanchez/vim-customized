require('nvim-lsp-installer').setup({
    automatic_installation = true,
    ui = {
        border = 'double',
        icons = {
            server_installed = '✓',
            server_pending = '➜',
            server_uninstalled = '✗'
        }
    }
})
