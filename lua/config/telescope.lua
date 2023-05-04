-- require('telescope').load_extension('smart_history')
require('telescope').setup {
  defaults = {
    wrap_results = true,
    history = {
      path = '~/.local/share/nvim/databases/telescope_history.sqlite3',
      limit = 100
    }
  }
}

require('telescope').load_extension('smart_history')
require('telescope').load_extension('glyph')
require('telescope').load_extension('ag')
