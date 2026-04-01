-- Setup language servers.
local completion = require('blink.cmp')

--Enable (broadcasting) snippet capability for completion
-- local capabilities = vim.lsp.protocol.make_client_capabilities()  -- default
-- capabilities.textDocument.completion.completionItem.snippetSupport = true -- default
-- local capabilities = completion.default_capabilities()  -- nvim-cmp
local capabilities = completion.get_lsp_capabilities()     -- blink

vim.lsp.config('clangd', { on_attach = on_attach, capabilities = capabilities })
vim.lsp.config('cssls', { on_attach = on_attach, capabilities = capabilities })
vim.lsp.config('tailwindcss', { on_attach = on_attach, capabilities = capabilities })
vim.lsp.config('emmet_language_server', { on_attach = on_attach, capabilities = capabilities })
vim.lsp.config('emmet_ls', { on_attach = on_attach, capabilities = capabilities })
vim.lsp.config('pyright', { on_attach = on_attach, capabilities = capabilities })
vim.lsp.config('ts_ls', { on_attach = on_attach, capabilities = capabilities })
vim.lsp.config('lua_ls', { on_attach = on_attach, capabilities = capabilities })
vim.lsp.config('rust_analyzer', { on_attach = on_attach, capabilities = capabilities })

vim.lsp.config('html', {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    configurationSection = { 'html', 'css', 'javascript' },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true
  }
})

vim.lsp.enable('clangd')
vim.lsp.enable('cssls')
vim.lsp.enable('tailwindcss')
vim.lsp.enable('emmet_language_server')
vim.lsp.enable('emmet_ls')
vim.lsp.enable('pyright')
vim.lsp.enable('ts_ls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('html')

-- Other LSP configs
vim.diagnostic.config({ virtual_text = false, underline = true, signs = false, })
