--
-- Vendor plugins
--

PLUGINS = HOME .. '/.vim/vendor'

local Plug = vim.fn['plug#']

vim.call('plug#begin', PLUGINS)

--  Initial options and defaults
Plug 'airblade/vim-rooter'            -- vim-rooter - changes working dir to the project root

-- File management
Plug 'stevearc/oil.nvim'            -- File mgmt using a buffer

--  Window splits
Plug 'simeji/winresizer'            -- Resize splits with hjkl, using :WinResizerStartResize
Plug 'qpkorr/vim-bufkill'           -- Closes buffers
Plug 'vimlab/split-term.vim'        -- Better Terminal splits

--  GUI
Plug 'pabloasanchez/vim-quickui'      -- Top Menu
Plug 'jinzhongjia/LspUI.nvim'
Plug "SmiteshP/nvim-navic"          -- navbuddy dependency (crumbs)
Plug "MunifTanjim/nui.nvim"         -- navbuddy dependency (ui)
Plug "SmiteshP/nvim-navbuddy"

--  Language-specific
Plug 'eliba2/vim-node-inspect'

--  Search
Plug ('junegunn/fzf', {dir = '~/.fzf', ['do'] = './install --all' })        --  fzf - Multi use Fuzzy Finder
Plug 'junegunn/fzf.vim'            --  fzf - Multi use Fuzzy Finder
Plug 'rhysd/clever-f.vim'          --  clever-f - clever-f.vim extends f, F, t and T mappings for more convenience 
Plug 'nvim-lua/plenary.nvim'       --  Required by Telescope and spectre
Plug 'nvim-pack/nvim-spectre'      --  A search panel for neovim.
Plug 'rlane/pounce.nvim'           --  Fuzzy jump search

--  Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'ghassan0/telescope-glyph.nvim'
Plug 'kelly-lin/telescope-ag'
Plug 'kkharji/sqlite.lua'         -- Required by telescope-all-recent
Plug 'prochri/telescope-all-recent.nvim'

--  Edit tools
-- Plug 't9md/vim-textmanip'             --  t9md/vim-textmanip - Move/duplicate text intuitively
Plug 'booperlv/nvim-gomove'
Plug 'tpope/vim-surround'             --  Surroundings yss, ysiw, cs' ds', S
Plug 'tpope/vim-repeat'               --  repeat.vim - remaps . in a way that plugins can tap into it
Plug 'tpope/vim-commentary'           --  commentary.vim - comment stuff out
Plug 'alvan/vim-closetag'             --  Automatically closes x/html tags
-- Plug 'chrisgrieser/nvim-puppeteer'   --  Automatically converts to fstrings in diff langs
Plug 'numToStr/Comment.nvim'
Plug 'tenxsoydev/karen-yank.nvim'
-- Clipboard and registers
Plug 'AckslD/nvim-neoclip.lua'

--  Gutter
Plug 'kshenoy/vim-signature'     --  vim-signature - Place, toggle, display marks
-- Plug 'lewis6991/gitsigns.nvim'    --  Super fast git decorations implemented purely in lua/teal.

--  Terminal
Plug 'voldikss/vim-floaterm'      --  floaterm - Floating Terminal for vim

--  Start screen
Plug 'goolord/alpha-nvim'

--  Color schemes and icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'rafi/awesome-vim-colorschemes'

--  LSP
Plug 'neovim/nvim-lspconfig'
Plug 'dnlhc/glance.nvim'

-- Snips
Plug 'rafamadriz/friendly-snippets'
Plug ('L3MON4D3/LuaSnip', { ['tag'] = 'v2.1.1', ['do'] = 'make install_jsregexp' })

-- Completion
-- Sources
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
-- Plug 'hrsh7th/cmp-path'
-- Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'            -- Main plugin

Plug 'saadparwaiz1/cmp_luasnip'

-- TS Manager
Plug ('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

--  Distraction free
Plug ('shortcuts/no-neck-pain.nvim', { ['tag'] = '*' })

vim.call('plug#end')

-- Require configurations
require('config/oil')
require('config/rooter')
require('config/alpha-nvim')
require('config/neoclip')
require('config/pounce')
require('config/telescope')
require('config/glance')
require('config/luasnip')
require('config/nvim-cmp')
require('config/nvim-treesitter')
require('config/navbuddy')
require('config/lspconfig')
require('config/lspui')
require('config/gomove')

-- Optionless -  require("my_plugin").setup()
require('Comment').setup()
require('spectre').setup()
require('no-neck-pain').setup({ disableOnLastBuffer = false, width = 130 })
require('luasnip.loaders.from_vscode').lazy_load()     --   Luasnip: Activates friendly-snippets

