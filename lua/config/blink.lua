require('blink.cmp').setup({
  -- 'default' for mappings similar to built-in completion
  -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
  -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
  -- See the full "keymap" documentation for information on defining your own keymap.

  completion = {
    -- 'prefix' will fuzzy match on the text before the cursor
    -- 'full' will fuzzy match on the text before *and* after the cursor
    -- example: 'foo_|_bar' will match 'foo_' for 'prefix' and 'foo__bar' for 'full'
    keyword = { range = 'full' },

    -- Disable auto brackets
    -- NOTE: some LSPs may add auto brackets themselves anyway
    accept = { auto_brackets = { enabled = false }, },

    -- Don't select by default, auto insert on selection
    list = { selection = { preselect = false, auto_insert = true } },
    -- or set either per mode via a function
    -- list = { selection = { preselect = function(ctx) return ctx.mode ~= 'cmdline' end } }
  },

  keymap = {
    -- set to 'none' to disable the 'default' preset
    preset = 'enter',

    ['<S-Tab>'] = { 'select_prev', 'fallback' },
    ['<Tab>'] = { 'select_next', 'fallback' },
    ['<C-k>'] = { 'select_prev', 'fallback' },
    ['<C-j>'] = { 'select_next', 'fallback' },

    -- disable a keymap from the preset
    ['<C-e>'] = {},

    -- show with a list of providers
    -- ['<C-space>'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },

    -- control whether the next command will be run when using a function
    -- ['<C-n>'] = {
    --   function(cmp)
    --     -- if some_condition then return end -- runs the next command
    --     return true                     -- doesn't run the next command
    --   end,
    --   'select_next'
    -- },

    -- optionally, separate cmdline keymaps
    -- cmdline = {}
  },

  appearance = {
    -- Sets the fallback highlight groups to nvim-cmp's highlight groups
    -- Useful for when your theme doesn't support blink.cmp
    -- Will be removed in a future release
    use_nvim_cmp_as_default = true,
    -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
    -- Adjusts spacing to ensure icons are aligned
    nerd_font_variant = 'mono'
  },

  -- Default list of enabled providers defined so that you can extend it
  -- elsewhere in your config, without redefining it, due to `opts_extend`
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
})
