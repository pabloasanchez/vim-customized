--
-- Vendor plugins
--

PLUGINS = HOME .. '/.vim/vendor'

local Plug = vim.fn['plug#']

vim.call('plug#begin', PLUGINS)

--  Initial options and defaults
Plug 'airblade/vim-rooter' -- vim-rooter - changes working dir to the project root

--  LSP
Plug 'neovim/nvim-lspconfig'
Plug 'dnlhc/glance.nvim'

-- File management
Plug 'stevearc/oil.nvim' -- File mgmt using a buffer

--  Window splits
Plug 'simeji/winresizer'     -- Resize splits with hjkl, using :WinResizerStartResize
Plug 'vimlab/split-term.vim' -- Better Terminal splits

-- Buffers
Plug 'dzfrias/arena.nvim'   -- Switch buffers
Plug 'qpkorr/vim-bufkill'   -- Closes buffers
Plug 'ojroques/nvim-bufdel' -- Buffer Deletion

--  GUI
Plug 'pabloasanchez/vim-quickui' -- Top Menu
-- Plug 'jinzhongjia/LspUI.nvim'
Plug 'nvimdev/lspsaga.nvim'
Plug 'SmiteshP/nvim-navic'    -- navbuddy dependency (crumbs)
Plug 'MunifTanjim/nui.nvim'   -- navbuddy dependency (ui)
Plug 'SmiteshP/nvim-navbuddy' -- navbuddy - LSP Outline in a floating window
-- Plug 'folke/trouble.nvim'        -- Error messages / diagnostics

--  Language-specific
Plug 'eliba2/vim-node-inspect'
Plug 'olrtg/nvim-emmet'

--  Search
Plug('junegunn/fzf', { dir = '~/.fzf', ['do'] = './install --all' }) --  fzf - Multi use Fuzzy Finder
Plug 'junegunn/fzf.vim'                                              --  fzf - Multi use Fuzzy Finder
Plug 'rhysd/clever-f.vim'                                            --  clever-f - clever-f.vim extends f, F, t and T mappings for more convenience
Plug 'nvim-lua/plenary.nvim'                                         --  Required by Telescope and spectre
Plug 'rlane/pounce.nvim'                                             --  Fuzzy jump search

--  Telescope
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
Plug 'ghassan0/telescope-glyph.nvim'
Plug 'kelly-lin/telescope-ag'
Plug 'kkharji/sqlite.lua' -- Required by telescope-all-recent
Plug 'prochri/telescope-all-recent.nvim'

--  Edit tools
-- Plug 't9md/vim-textmanip'             --  t9md/vim-textmanip - Move/duplicate text intuitively
Plug 'booperlv/nvim-gomove'
Plug 'tpope/vim-surround'   --  Surroundings yss, ysiw, cs' ds', S
Plug 'tpope/vim-repeat'     --  repeat.vim - remaps . in a way that plugins can tap into it
Plug 'tpope/vim-commentary' --  commentary.vim - comment stuff out
Plug 'alvan/vim-closetag'   --  Automatically closes x/html tags

-- Clipboard and registers
Plug 'AckslD/nvim-neoclip.lua'

--  Gutter
Plug 'kshenoy/vim-signature' --  vim-signature - Place, toggle, display marks
Plug 'airblade/vim-gitgutter'

--  Terminal
Plug 'voldikss/vim-floaterm' --  floaterm - Floating Terminal for vim

--  Color schemes and icons
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'pabloasanchez/quiet-code.vim'

--  Start screen
Plug 'goolord/alpha-nvim'

-- Quickfix
Plug 'stevearc/quicker.nvim'

-- Snips
-- Plug 'rafamadriz/friendly-snippets'
-- Plug('L3MON4D3/LuaSnip', { ['tag'] = 'v2.1.1', ['do'] = 'make install_jsregexp' })

-- Completion
Plug 'saghen/blink.cmp'

-- TS Manager
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

--  Distraction free
Plug('pabloasanchez/yazmp')

vim.call('plug#end')

-- Require configurations
require('config/oil')
require('config/rooter')
require('config/alpha-nvim')
require('config/neoclip')
require('config/pounce')
require('config/telescope')
require('config/glance')
-- require('config/luasnip')
require('config/nvim-treesitter')
require('config/navbuddy')
require('config/blink')
require('config/lspconfig')
-- require('config/lspui')
require('config/lspsaga')
require('config/gomove')
-- require('config/trouble')
require('config/arena')
require('config/quicker')

-- Optionless -  require('my_plugin').setup()
require('quicker').setup()
-- require('spectre').setup()
-- require('luasnip.loaders.from_vscode').lazy_load() --   Luasnip: Activates friendly-snippets
