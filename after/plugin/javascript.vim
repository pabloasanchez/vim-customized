" javascript.vim - JS Language config

" vim-javascript - JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.

" vim-prettier - JS Prettier 
" Plug 'prettier/vim-prettier', {
"  \ 'do': 'yarn install',
"  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Formatters
" au FileType javascript setlocal formatprg=prettier
" au FileType javascript.jsx setlocal formatprg=prettier
" au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
" au FileType html setlocal formatprg=js-beautify\ --type\ html
" au FileType scss setlocal formatprg=prettier\ --parser\ css
" au FileType css setlocal formatprg=prettier\ --parser\ css

command! -nargs=0 Prettier :CocCommand prettier.formatFile

