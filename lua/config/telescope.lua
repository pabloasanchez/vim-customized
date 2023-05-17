-- require('telescope').load_extension('smart_history')
local actions = require("telescope.actions")

require('telescope').setup {
  defaults = {
    wrap_results = true,

		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous, -- move to prev result
				["<C-j>"] = actions.move_selection_next, -- move to next result
				["<ESC>"] = actions.close, -- move to next result
				["<C-q>"] = actions.close, -- move to next result
			},
		},

    layout_strategy='vertical',
    layout_config={ width = 0.5 },

    history = {
      path = '~/.local/share/nvim/databases/telescope_history.sqlite3',
      limit = 100
    }
  }
}

-- require('telescope').load_extension('smart_history')
require('telescope').load_extension('glyph')
require('telescope').load_extension('ag')

require'telescope-all-recent'.setup({})
