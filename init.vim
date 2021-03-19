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
Plug 'pangloss/vim-javascript'

" t9md/vim-textmanip - Move/duplicate text intuitively
Plug 't9md/vim-textmanip'

" svermeulen/vim-yoink - Yoink will automatically maintain a history of yanks that you can choose between when pasting
Plug 'svermeulen/vim-yoink'

" indentLine - This plugin is used for displaying tin vertical lines at each indentation level
Plug 'Yggdroot/indentLine'

" Icons 
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" Color schemes
Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

