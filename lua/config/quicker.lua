local quicker = require('quicker')

quicker.setup({
  -- on_qf = function(bufnr) end,
  constrain_cursor = true, -- Keep the cursor to the right of the filename and lnum columns
  follow = {
    -- When quickfix window is open, scroll to closest item to the cursor
    enabled = true,
  },
  -- -- Map of quickfix item type to icon
  -- type_icons = {
  --   E = "󰅚 ",
  --   W = "󰀪 ",
  --   I = " ",
  --   N = " ",
  --   H = " ",
  -- },
  -- How to trim the leading whitespace from results. Can be 'all', 'common', or false
  trim_leading_whitespace = "all",
  keys = {
    {
      ";e",
      function()
        quicker.expand({ before = 2, after = 2, add_to_existing = true })
      end,
      desc = "Expand quickfix context",
    },
    {
      ";w",
      function()
        require("quicker").collapse()
      end,
      desc = "Collapse quickfix context",
    },
  },
})
