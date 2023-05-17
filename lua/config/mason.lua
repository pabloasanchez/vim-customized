local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local navbuddy = require('nvim-navbuddy')
navbuddy.setup {
    window = {
        border = 'double',  -- 'rounded', 'double', 'solid', 'none'
        size = '100%',       -- Or table format example: { height = '40%', width = '100%'}
     },
}

require('mason').setup()
require('mason-lspconfig').setup()
require('mason-lspconfig').setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  
  function (server_name) -- default handler (optional)
      lspconfig[server_name].setup {
        on_attach = function(client, bufnr)
          navbuddy.attach(client, bufnr)
        end
      }
  end,

  -- Next, you can provide a dedicated handler for specific servers.
  -- For example, a handler override for the `rust_analyzer`:
  -- ['rust_analyzer'] = function ()
      -- require('rust-tools').setup {}
  -- end

  -- ['emmet_ls'] = function ()
  --   require('emmet_ls').setup {
  --     -- on_attach = on_attach,
  --     capabilities = capabilities,
  --     filetypes = { 'css', 'eruby', 'html', 'javascript', 'javascriptreact', 'less', 'sass', 'scss', 'svelte', 'pug', 'typescriptreact', 'vue' },
  --     init_options = {
  --       html = {
  --         options = {
  --           -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
  --           ['bem.enabled'] = true,
  --         },
  --       },
  --     }
  --   }
  -- end
}

