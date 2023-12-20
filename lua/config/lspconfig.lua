-- Setup language servers.
local configs = require('lspconfig/configs')
local lspconfig = require('lspconfig')
local completion = require('cmp_nvim_lsp')

--Enable (broadcasting) snippet capability for completion
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
local capabilities = completion.default_capabilities()

lspconfig.cssls.setup { on_attach = on_attach , capabilities = capabilities }
lspconfig.pyright.setup { on_attach = on_attach , capabilities = capabilities }
lspconfig.tsserver.setup { on_attach = on_attach , capabilities = capabilities }
lspconfig.luau_lsp.setup { on_attach = on_attach , capabilities = capabilities }

lspconfig.html.setup {
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
}

