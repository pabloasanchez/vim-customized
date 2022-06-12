
--
-- Vendor plugins
--

PLUGINS = HOME .. '/.vim/vendor'

local Plug = vim.fn['plug#']

vim.call('plug#begin', PLUGINS)

--  Initial options and defaults
Plug 'rstacruz/vim-opinion'           -- vim-opinion - An almost-universal set of defaults that most people can agree on. recommended for use alongside vim-sensible.
Plug 'airblade/vim-rooter'            -- vim-rooter - changes working dir to the project root

--  Note-taking (Zettelkasten Method)
Plug 'Aarleks/zettel.vim'
vim.g.zettelkasten = HOME .. '/notes/zk/'

--  Window splits
Plug 'vimlab/split-term.vim'                        -- Better terminal splits
Plug 'simeji/winresizer'                            -- Resize splits with hjkl, using :WinResizerStartResize
Plug 'mhinz/vim-sayonara'                           -- Closes buffers

--  GUI
Plug 'skywind3000/vim-quickui'

--  Bars
--  WinBar see winbar.vim

--  Language-specific
Plug 'eliba2/vim-node-inspect'

--  Search
--  Plug 'brooth/far.vim'                                                     " Far - Find and replace TODO broken
Plug ('junegunn/fzf', {dir = '~/.fzf', do = './install --all' })           --  fzf - Multi use Fuzzy Finder
Plug 'junegunn/fzf.vim'                                                     --  fzf - Multi use Fuzzy Finder
Plug 'rhysd/clever-f.vim'                                                   --  clever-f - clever-f.vim extends f, F, t and T mappings for more convenience 
Plug 'nvim-lua/plenary.nvim'                                                --  Required by Telescope
Plug 'nvim-telescope/telescope.nvim'


--  Edit tools
Plug 't9md/vim-textmanip'                                     --  t9md/vim-textmanip - Move/duplicate text intuitively
Plug 'tpope/vim-surround'                                     --  Surroundings yss, ysiw, cs' ds', S
Plug 'tpope/vim-repeat'                                       --  repeat.vim - remaps . in a way that plugins can tap into it
Plug 'tpope/vim-commentary'                                   --  commentary.vim - comment stuff out      
Plug ('nvim-treesitter/nvim-treesitter', {do = ':TSUpdate'})   --  treesitter - syntax highlight parsers. We recommend updating the parsers on update
Plug 'alvan/vim-closetag'                                     --  Automatically closes x/html tags
Plug 'jiangmiao/auto-pairs'                                   --  Insert or delete brackets, parens, quotes in pair

--  Gutter
Plug 'kshenoy/vim-signature'                                  --  vim-signature - Place, toggle, display marks
Plug 'airblade/vim-gitgutter'                                 --  vim-gitgutter - Shows git diff sign in the sign column.

--  Terminal
Plug 'voldikss/vim-floaterm'                          --  floaterm - Floating Terminal for vim

--  Start screen
Plug 'mhinz/vim-startify'                             --  vim-startify - This plugin provides a start screen for Vim and Neovim.

--  Color schemes and icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'rafi/awesome-vim-colorschemes'

--  LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
require('nvim-lsp-installer').setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = '✓',
            server_pending = '➜',
            server_uninstalled = '✗'
        }
    }
})

-- Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

-- Snips
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

--  Distraction free
Plug 'junegunn/limelight.vim'                         --  limelight, hyperfocusing in vim
Plug 'junegunn/goyo.vim'                              --  Distraction-free plugins
vim.g.goyo_width = '100%'
vim.g.goyo_height = '100%'
vim.g.goyo_linenr = 1

vim.call('plug#end')

