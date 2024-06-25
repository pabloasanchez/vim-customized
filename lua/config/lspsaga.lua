require("lspsaga").setup({
  lightbulb = {
    enable = false,         -- close by default
    command_enable = false, -- close by default, this switch does not have to be turned on, this command has no effect
    icon = "",
    virtual_text = false,   -- disables just the one at the end of the line
  },
  symbol_in_winbar = {
    enable = false,
    show_file = true,
    separator = "  ",
    color_mode = false,
  },
  code_action = {
    enable = false,
    command_enable = false,
    icon = "",
    keybind = {
      exec = "<CR>",
      prev = "k",
      next = "j",
      quit = "q",
    },
  },
  -- hover = {
  --   enable = true,
  --   command_enable = true,
  --   keybind = {
  --     prev = "p",
  --     next = "n",
  --     quit = "q",
  --   },
  -- },
  -- rename = {
  --   enable = true,
  --   command_enable = true,
  --   auto_select = true, -- whether select all automatically
  --   keybind = {
  --     change = "<CR>",
  --     quit = "<ESC>",
  --   },
  -- },
  diagnostic = {
    enable = false,
    command_enable = true,
    icons = {
      Error = " ",
      Warn = " ",
      Info = " ",
      Hint = " ",
    },
  },
  -- peek_definition = {
  --   enable = false, -- close by default
  --   command_enable = true,
  --   keybind = {
  --     edit = "op",
  --     vsplit = "ov",
  --     split = "os",
  --     quit = "q",
  --   },
  -- },
})
