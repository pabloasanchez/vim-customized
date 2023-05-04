local navbuddy = require("nvim-navbuddy")
navbuddy.setup {
    window = {
        border = "single",  -- "rounded", "double", "solid", "none"
                            -- or an array with eight chars building up the border in a clockwise fashion
                            -- starting with the top-left corner. eg: { "╔", "═" ,"╗", "║", "╝", "═", "╚", "║" }.
        size = "100%",       -- Or table format example: { height = "40%", width = "100%"}
        -- position = "50%",   -- Or table format example: { row = "100%", col = "0%"}
        -- scrolloff = nil,    -- scrolloff value within navbuddy window
        -- sections = {
        --     left = {
        --         size = "20%",
        --         border = nil, -- You can set border style for each section individually as well.
        --     },
        --     mid = {
        --         size = "40%",
        --         border = nil,
        --     },
        --     right = {
        --         -- No size option for right most section. It fills to
        --         -- remaining area.
        --         border = nil,
        --         preview = "leaf",  -- Right section can show previews too.
        --                            -- Options: "leaf", "always" or "never"
        --     }
        -- },
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

