" init.vim - Init script, equivalent to .vimrc
" Based on https://github.com/rstacruz/vim-from-scratch

set nocompatible

" Leader key
let g:mapleader=";"

" Vendor plugins
call plug#begin('~/.vim/vendor')

" vim-sensible - vim-sensible is enabled for non gui or non nvim
" Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.
if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif

" Plug 'ternjs/tern_for_vim'          " Using coc instead
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'

" vim-opinion - An almost-universal set of defaults that most people can agree on. recommended for use alongside vim-sensible.
Plug 'rstacruz/vim-opinion'

" fzf - Multi use Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Buffer/Tabs (tabline) management
Plug 'pacha/vem-tabline'
" Plug 'bagrat/vim-buffet'
" Plug 'fholgado/minibufexpl.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='simple'

" floaterm - Floating Terminal for vim
Plug 'voldikss/vim-floaterm'

" clever-f - clever-f.vim extends f, F, t and T mappings for more convenience 
Plug 'rhysd/clever-f.vim'

" vim-startify - This plugin provides a start screen for Vim and Neovim.
Plug 'mhinz/vim-startify'

" t9md/vim-textmanip - Move/duplicate text intuitively
Plug 't9md/vim-textmanip'

" svermeulen/vim-yoink - Yoink will automatically maintain a history of yanks that you can choose between when pasting
" Replaced with :CocInstall coc-yank
" Plug 'svermeulen/vim-yoink'

" indentLine - This plugin is used for displaying tin vertical lines at each indentation level
Plug 'Yggdroot/indentLine'

" delimitmate - This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
Plug 'raimondi/delimitmate'

" Icons 
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" Color schemes
Plug 'rafi/awesome-vim-colorschemes'

" vim-signature - Place, toggle, display marks
Plug 'kshenoy/vim-signature'

" surround.vim - Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'

" vim-gitgutter - Shows git diff sign in the sign column.
Plug 'airblade/vim-gitgutter'

" repeat.vim - remaps . in a way that plugins can tap into it
Plug 'tpope/vim-repeat'

" vim-rooter - changes working dir to the project root
Plug 'airblade/vim-rooter'

" commentary.vim - comment stuff out
Plug 'tpope/vim-commentary'

" File Tree
" NERDTree - The NERDTree is a file system explorer for the Vim editor.
" Plug 'preservim/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'codota/tabnine-vim'

" vim-fugitive - Git Plugin
Plug 'tpope/vim-fugitive'

call plug#end()

