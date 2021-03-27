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

" vim-opinion - An almost-universal set of defaults that most people can agree on. recommended for use alongside vim-sensible.
Plug 'rstacruz/vim-opinion'

" fzf - Multi use Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" barbar - Tab bar
" Plug 'romgrk/barbar.nvim'

" vem-tabline - tab bar 
Plug 'pacha/vem-tabline'

" floaterm - Floating Terminal for vim
Plug 'voldikss/vim-floaterm'

" clever-f - clever-f.vim extends f, F, t and T mappings for more convenience 
Plug 'rhysd/clever-f.vim'

" vim-startify - This plugin provides a start screen for Vim and Neovim.
Plug 'mhinz/vim-startify'

" vim-javascript - JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.
" Plug 'pangloss/vim-javascript'

" t9md/vim-textmanip - Move/duplicate text intuitively
Plug 't9md/vim-textmanip'

" svermeulen/vim-yoink - Yoink will automatically maintain a history of yanks that you can choose between when pasting
Plug 'svermeulen/vim-yoink'

" indentLine - This plugin is used for displaying tin vertical lines at each indentation level
Plug 'Yggdroot/indentLine'

" delimitmate - This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
Plug 'raimondi/delimitmate'

" Icons 
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" Color schemes
Plug 'rafi/awesome-vim-colorschemes'

" vim-prettier - JS Prettier 
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" vim-signature - Place, toggle, display marks
Plug 'kshenoy/vim-signature'

" surround.vim - Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'

" vim-gitgutter - Shows git diff sign in the sign column.
Plug 'airblade/vim-gitgutter'

" repeat.vim - remaps . in a way that plugins can tap into it
Plug 'tpope/vim-repeat'

" completion
" Plug 'ajh17/vimcompletesme'
Plug 'neoclide/coc.nvim'

" vim-rooter - changes working dir to the project root
Plug 'airblade/vim-rooter'

" commentary.vim - comment stuff out
Plug 'tpope/vim-commentary'

" Ternjs - Code analysis JS 
" Note: After PLugInstall you need to run `npm i` under vendor
Plug 'ternjs/tern_for_vim'

call plug#end()

