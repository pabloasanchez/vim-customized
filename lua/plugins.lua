--
-- Vendor plugins
--

PLUGINS = HOME .. '/.vim/vendor'

local Plug = vim.fn['plug#']

vim.call('plug#begin', PLUGINS)

--  Initial options and defaults
Plug 'airblade/vim-rooter'            -- vim-rooter - changes working dir to the project root

--  Window splits
Plug 'vimlab/split-term.vim'        -- Better Terminal splits
Plug 'simeji/winresizer'            -- Resize splits with hjkl, using :WinResizerStartResize
Plug 'mhinz/vim-sayonara'           -- Closes buffers

--  GUI
Plug 'pabloasanchez/vim-quickui'      -- Top Menu
Plug 'jinzhongjia/LspUI.nvim'
-- Plug 'MunifTanjim/nui.nvim'
-- Plug 'stevearc/dressing.nvim'

--  Language-specific
Plug 'eliba2/vim-node-inspect'

--  Search
Plug ('junegunn/fzf', {dir = '~/.fzf', ['do'] = './install --all' })        --  fzf - Multi use Fuzzy Finder
Plug 'junegunn/fzf.vim'                                                     --  fzf - Multi use Fuzzy Finder
Plug 'rhysd/clever-f.vim'                                                   --  clever-f - clever-f.vim extends f, F, t and T mappings for more convenience 
Plug 'nvim-lua/plenary.nvim'                                                --  Required by Telescope

--  Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'kkharji/sqlite.lua'                                     -- Required by telescope-smart-history
Plug 'nvim-telescope/telescope-smart-history.nvim'

--  Edit tools
Plug 't9md/vim-textmanip'                                     --  t9md/vim-textmanip - Move/duplicate text intuitively
Plug 'tpope/vim-surround'                                     --  Surroundings yss, ysiw, cs' ds', S
Plug 'tpope/vim-repeat'                                       --  repeat.vim - remaps . in a way that plugins can tap into it
Plug 'tpope/vim-commentary'                                   --  commentary.vim - comment stuff out      
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})   --  treesitter - syntax highlight parsers. We recommend updating the parsers on update
Plug 'nacro90/numb.nvim'                                      -- numb.nvim is a Neovim plugin that peeks lines of the buffer in non-obtrusive way.
-- Plug 'alvan/vim-closetag'                                     --  Automatically closes x/html tags
-- Plug 'mattn/emmet-vim'                                        -- Emmet

-- Clipboard and registers
Plug 'AckslD/nvim-neoclip.lua'

--  Gutter
Plug 'kshenoy/vim-signature'                                  --  vim-signature - Place, toggle, display marks
Plug 'lewis6991/gitsigns.nvim'                                --  Super fast git decorations implemented purely in lua/teal.

--  Terminal
Plug 'voldikss/vim-floaterm'                          --  floaterm - Floating Terminal for vim

--  Start screen
Plug 'goolord/alpha-nvim'

--  Color schemes and icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'rafi/awesome-vim-colorschemes'

--  LSP
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
-- Plug 'williamboman/nvim-lsp-installer'
-- Plug 'simrat39/symbols-outline.nvim'
Plug 'dnlhc/glance.nvim'

--  IDE
-- Plug 'echasnovski/mini.nvim'
-- Plug 'echasnovski/mini.completion'

-- Completion
Plug ('ms-jpq/coq_nvim', {['branch'] = 'coq'})
Plug ('ms-jpq/coq.artifacts', {['branch'] = 'artifacts'})
Plug ('ms-jpq/coq.thirdparty', {['branch'] = '3p'})

-- Snips
-- Plug 'L3MON4D3/LuaSnip'
-- Plug 'rafamadriz/friendly-snippets'

--  Distraction free
-- Plug 'junegunn/limelight.vim'                         --  limelight, hyperfocusing in vim
-- Plug 'junegunn/goyo.vim'                              --  Distraction-free plugins

-- Img view
-- Plug 'samodostal/image.nvim'                          -- Image view, requires plenary (already imported)

vim.call('plug#end')

-- Require configurations
require('config/alpha-nvim')
require('config/nvim-treesitter')
require('config/gitsigns')
require('config/numb')
require('config/neoclip')
require('config/mason')
require('config/coq')
require('config/telescope')
require('config/glance')
-- require('config/image')
-- require('config/emmet')

-- Optionless
-- require("my_plugin").setup()
require("LspUI").setup()

-- Luasnip: Activates friendly-snippets
-- require('luasnip.loaders.from_vscode').lazy_load()
















