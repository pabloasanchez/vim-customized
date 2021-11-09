"
" Nvim options
"
let g:mapleader=";"

set nocompatible
set splitbelow
set splitright
set wrap
set cursorline

"
" Vendor plugins
"
call plug#begin('~/.vim/vendor')


"
" Initial options and defaults
"
Plug 'rstacruz/vim-opinion'           "vim-opinion - An almost-universal set of defaults that most people can agree on. recommended for use alongside vim-sensible.
Plug 'airblade/vim-rooter'            "vim-rooter - changes working dir to the project root


"
" File tree
"


"
" Window splits
Plug 'beauwilliams/focus.nvim'                     "Focus windows
:lua require('focus').setup()

"
" GUI
"
Plug 'skywind3000/vim-quickui'
Plug 'Yohannfra/Nvim-Switch-Buffer'                 "Buffer switcher
nnoremap S :SwitchBuffer <cr>
set switchbuf=usetab
set laststatus=0
" let g:switch_buffer_hide_numbers = 1


" Tab and status bar
Plug 'pacha/vem-tabline'                            "Tabline
" let g:vem_tabline_multiwindow_mode=1


"
" Language-specific
"
Plug 'maxmellon/vim-jsx-pretty'
Plug 'eliba2/vim-node-inspect'


"
" Search
"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }           " fzf - Multi use Fuzzy Finder
Plug 'junegunn/fzf.vim'                                                     " fzf - Multi use Fuzzy Finder
Plug 'rhysd/clever-f.vim'                                                   " clever-f - clever-f.vim extends f, F, t and T mappings for more convenience 
Plug 'brooth/far.vim'                                                       " Far - Find and replace TODO broken
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"
" Edit tools
"
Plug 't9md/vim-textmanip'                             " t9md/vim-textmanip - Move/duplicate text intuitively
Plug 'raimondi/delimitmate'                           " delimitmate - This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
Plug 'kshenoy/vim-signature'                          " vim-signature - Place, toggle, display marks
Plug 'tpope/vim-surround'                             " surround.vim - Surround.vim is all about surroundings: parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'airblade/vim-gitgutter'                         " vim-gitgutter - Shows git diff sign in the sign column.
Plug 'tpope/vim-repeat'                               " repeat.vim - remaps . in a way that plugins can tap into it
Plug 'tpope/vim-commentary'                           " commentary.vim - comment stuff out


"
" Terminal
"
Plug 'voldikss/vim-floaterm'                          " floaterm - Floating Terminal for vim


"
" Start screen
"
Plug 'mhinz/vim-startify'                             " vim-startify - This plugin provides a start screen for Vim and Neovim.


"
" Color schemes and icons
"
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'rafi/awesome-vim-colorschemes'


"
" LSP
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Distraction free
Plug 'junegunn/limelight.vim'                         " limelight, hyperfocusing in vim
Plug 'junegunn/goyo.vim'                              " Distraction-free plugins


call plug#end()

