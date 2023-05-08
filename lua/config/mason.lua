local navbuddy = require("nvim-navbuddy")
navbuddy.setup {
    window = {
        border = "double",  -- "rounded", "double", "solid", "none"
        size = "100%",       -- Or table format example: { height = "40%", width = "100%"}
     },
}

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  
  function (server_name) -- default handler (optional)
      require("lspconfig")[server_name].setup {
        on_attach = function(client, bufnr)
          navbuddy.attach(client, bufnr)
        end
      }
  end,

  -- Next, you can provide a dedicated handler for specific servers.
  -- For example, a handler override for the `rust_analyzer`:
  -- ["rust_analyzer"] = function ()
      -- require("rust-tools").setup {}
  -- end
}

