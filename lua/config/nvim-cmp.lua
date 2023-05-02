-- Setup nvim-cmp.
local cmp = require 'cmp'
local lspkind = require 'lspkind'
local luasnip = require 'luasnip'


cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  mapping = {
    -- ... Your other mappings ...
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    -- ["<Esc>"] = cmp.mapping.abort(),
    -- ["<Esc>"] = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Insert, select = false },
    -- ["<Esc>"] = cmp.mapping.close() -- cmp.mapping.confirm({ select = false }),
    ["<Esc>"] = cmp.mapping(function(fallback)
      cmp.abort()
      fallback()
    end, { "i", "s" }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip and luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip and luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },

  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer   = "[buf]",
        nvim_lsp = "[LSP]",
        path     = "[path]",
      },
    },
  },

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- { name = 'nvim_lua' },
    { name = 'buffer' },
    { name = 'path' },
    -- { name = 'calc' },
    -- { name = 'digraphs' },
    -- { name = 'omni' },
    { name = 'nvim_lsp_signature_help' },
    -- { name = 'nvim-lsp-document-symbol' },
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    -- { name = 'buffer' },
  })
})

-- Additional mapping for luasnip next choice
vim.api.nvim_set_keymap("i", "<A-Tab>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<A-Tab>", "<Plug>luasnip-next-choice", {})

-- Set configuration for specific filetype.

cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = {
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<Esc>'] = cmp.mapping({
      c = function()
        if cmp.visible() then
          cmp.close()
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-c>', true, true, true), 'n', true)
        end
      end
    }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip and luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip and luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    -- { name = 'cmdline' }
  })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['tsserver'].setup { capabilities = capabilities }
require('lspconfig')['gopls'].setup { capabilities = capabilities }
require('lspconfig')['rust_analyzer'].setup { capabilities = capabilities }
require('lspconfig')['arduino_language_server'].setup { capabilities = capabilities }

-- require('lspconfig')['asm_lsp'].setup { capabilities = capabilities }
require('lspconfig')['bashls'].setup { capabilities = capabilities }
require('lspconfig')['clangd'].setup { capabilities = capabilities }
require('lspconfig')['cmake'].setup { capabilities = capabilities }
require('lspconfig')['marksman'].setup { capabilities = capabilities }
require('lspconfig')['cssls'].setup { capabilities = capabilities }
require('lspconfig')['serve_d'].setup { capabilities = capabilities }
require('lspconfig')['jsonls'].setup { capabilities = capabilities }

-- require('lspconfig')['nimls'].setup { capabilities = capabilities }
-- require('lspconfig')['jdtls'].setup { capabilities = capabilities }
require('lspconfig')['html'].setup { capabilities = capabilities }
-- require('lspconfig')['sumneko_lua'].setup { capabilities = capabilities }
require('lspconfig')['pyright'].setup { capabilities = capabilities }

