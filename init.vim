" init.vim - Init script, equivalent to .vimrc
" Based on https://github.com/rstacruz/vim-from-scratch

set nocompatible
set splitbelow
set splitright
set wrap

" Leader key
let g:mapleader=";"

" Vendor plugins
call plug#begin('~/.vim/vendor')


" DEFAULTS
" vim-sensible - vim-sensible is enabled for non gui or non nvim
" Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.
if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif
" vim-opinion - An almost-universal set of defaults that most people can agree on. recommended for use alongside vim-sensible.
Plug 'rstacruz/vim-opinion'
" vim-rooter - changes working dir to the project root
Plug 'airblade/vim-rooter'

" FILE TREE


" WINDOW SPLITS
" Focus windows
" Plug 'beauwilliams/focus.nvim'
" :execute ":lua require('focus').setup()"


" TAB AND STATUS BAR
" Buffer/Tabs (tabline) management
" Plug 'hoob3rt/lualine.nvim'
" :execute ":lua require('lualine').setup()"
Plug 'pacha/vem-tabline'
let g:vem_tabline_multiwindow_mode=1
set laststatus=0


" LANGUAGE-SPECIFIC
Plug 'maxmellon/vim-jsx-pretty'
Plug 'eliba2/vim-node-inspect'


" SEARCH
" fzf - Multi use Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" clever-f - clever-f.vim extends f, F, t and T mappings for more convenience 
Plug 'rhysd/clever-f.vim'
" Far - Find and replace TODO broken
Plug 'brooth/far.vim'


" EDIT TOOLS
" t9md/vim-textmanip - Move/duplicate text intuitively
Plug 't9md/vim-textmanip'
" delimitmate - This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
Plug 'raimondi/delimitmate'
" indentLine - This plugin is used for displaying tin vertical lines at each indentation level
" Plug 'Yggdroot/indentLine'
" vim-signature - Place, toggle, display marks
Plug 'kshenoy/vim-signature'
" surround.vim - Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'
" vim-gitgutter - Shows git diff sign in the sign column.
Plug 'airblade/vim-gitgutter'
" repeat.vim - remaps . in a way that plugins can tap into it
Plug 'tpope/vim-repeat'
" commentary.vim - comment stuff out
Plug 'tpope/vim-commentary'


" TERMINAL
" floaterm - Floating Terminal for vim
Plug 'voldikss/vim-floaterm'


" START SCREEN
" vim-startify - This plugin provides a start screen for Vim and Neovim.
Plug 'mhinz/vim-startify'


" SCHEMES AND ICONS
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'rafi/awesome-vim-colorschemes'


" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" DISTRACTION FREE
" limelight, hyperfocusing in vim
Plug 'junegunn/limelight.vim'
" Distraction-free plugins
Plug 'junegunn/goyo.vim'


call plug#end()

