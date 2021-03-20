" key_bindings.vim - Custom key bindings

" Floating Terminal and fuzzy search mappings
nnoremap <silent><F4> :FloatermNew --autoclose=1 --width=1.0 --height=1.0 ranger<cr>
nnoremap <leader>r    :FloatermNew --autoclose=1 --width=1.0 --height=1.0 ranger<cr>
                  
nnoremap <F12>     :FloatermToggle terminal --title=Terminal<cr>
nnoremap <leader>t :FloatermToggle terminal --title=Terminal<cr>

nnoremap <C-g>     :FloatermNew --autoclose=1 --width=1.0 --height=1.0 --title=Git lazygit<cr>
nnoremap <leader>g :FloatermNew --autoclose=1 --width=1.0 --height=1.0 --title=Git lazygit<cr>

" Ctrl+P and Command History
nnoremap <C-p> :GitFiles<Enter>
nnoremap <SPACE> :History:<cr>

" Cycle through terminals
nmap } :FloatermPrev<cr>
nmap { :FloatermNext<cr>

" For exiting terminal mode on ESC
tnoremap <Esc> <C-\><C-n> <bar> :hide <cr>
tnoremap <F12> <C-\><C-n> <bar> :hide <cr>
" Moving terminals while on TERMINAL mode
tnoremap <leader>[ <C-\><C-n> <bar> :FloatermPrev <cr>
tnoremap <leader>] <C-\><C-n> <bar> :FloatermNext <cr>

" Hide terminals and other buffers
nnoremap <ESC> :hide <cr>

" Open Tags ith F2
nnoremap <F2>      :BTags<cr>
nnoremap <leader>b :BTags<cr>

" CTRL + F - Find lines in buffer, lines in all buffers, lines in ripgrep
nnoremap <C-f> :BLines<Enter>
nnoremap <leader>fl :Lines<Enter>
nnoremap <leader>f :Rg<Enter>

" VSCode style mappings for duplicating current line up or down
" C-S is compatible with Mac
xmap <C-S-down> <Plug>(textmanip-duplicate-down)
xmap <C-S-j> <Plug>(textmanip-duplicate-down)
nmap <C-S-down> <Plug>(textmanip-duplicate-down)
nmap <C-S-j> <Plug>(textmanip-duplicate-down)

xmap <C-S-up> <Plug>(textmanip-duplicate-up)
xmap <C-S-k> <Plug>(textmanip-duplicate-up)
nmap <C-S-up> <Plug>(textmanip-duplicate-up)
nmap <C-S-k> <Plug>(textmanip-duplicate-up)

xmap <C-A-down> <Plug>(textmanip-duplicate-down)
xmap <C-A-j> <Plug>(textmanip-duplicate-down)
nmap <C-A-down> <Plug>(textmanip-duplicate-down)
nmap <C-A-j> <Plug>(textmanip-duplicate-down)

xmap <C-A-up> <Plug>(textmanip-duplicate-up)
xmap <C-A-k> <Plug>(textmanip-duplicate-up)
nmap <C-A-up> <Plug>(textmanip-duplicate-up)
nmap <C-A-k> <Plug>(textmanip-duplicate-up)
" nnoremap <C-S-down> yyp
" nnoremap <C-S-j> yyp
" nnoremap <C-S-up> yypk
" nnoremap <C-S-k> yypk

" VSCode style mappings for moving current line up or down
" nmap <C-j> <Plug>(textmanip-move-down)
" nmap <C-k> <Plug>(textmanip-move-up)
" nmap <C-h> <Plug>(textmanip-move-left)
" nmap <C-l> <Plug>(textmanip-move-right)

xmap <C-j> <Plug>(textmanip-move-down)
xmap <C-k> <Plug>(textmanip-move-up)
xmap <C-h> <Plug>(textmanip-move-left)
xmap <C-l> <Plug>(textmanip-move-right)

nmap <C-down> <Plug>(textmanip-move-down)
nmap <C-up> <Plug>(textmanip-move-up)
" nmap <C-left> <Plug>(textmanip-move-left)
" nmap <C-right> <Plug>(textmanip-move-right)

xmap <C-down> <Plug>(textmanip-move-down)
xmap <C-up> <Plug>(textmanip-move-up)
xmap <C-left> <Plug>(textmanip-move-left)
xmap <C-right> <Plug>(textmanip-move-right)

" nnoremap <C-j> ddp
" nnoremap <C-up> ddkkp
" nnoremap <C-k> ddkkp
" nnoremap <C-down> ddp

" VSCode style delete line
nnoremap <C-D> dd

" VSCode style move and duplicate in insert mode
imap <C-down> <ESC><Plug>(textmanip-move-down)i
imap <C-up> <ESC><Plug>(textmanip-move-up)i
imap <C-S-down> <ESC><Plug>(textmanip-duplicate-up)i
imap <C-S-j> <ESC><Plug>(textmanip-duplicate-up)i
imap <C-S-up> <ESC><Plug>(textmanip-duplicate-up)i
imap <C-S-k> <ESC><Plug>(textmanip-duplicate-up)i
" imap <C-left> <ESC><Plug>(textmanip-move-left)i
" imap <C-right> <ESC><Plug>(textmanip-move-right)i
" imap <C-S-down> <ESC>yypi
" imap <C-S-j> <ESC>yypi
" imap <C-S-up> <ESC>yypki
" imap <C-S-k> <ESC>yypki
" imap <C-down> <ESC>ddpi
" imap <C-j> <ESC>ddpi
" imap <C-up> <ESC>ddkkpi
" imap <C-k> <ESC>ddkkpi
" imap <C-k> <ESC>ddkkpi
" imap <C-l> <C-O>l

" Insert mode misc shortcuts
imap :w <ESC>:w
imap <C-Z> <C-W> 
imap <C-D> <ESC>ddi

" Scrolling and movement
nnoremap <A-up> 4k
nnoremap <A-down> 4j
nnoremap <S-down> 4<C-e>
" nnoremap <S-j> 4<C-e>
nnoremap <S-up> 4<C-y>
nnoremap <S-k> 4<C-y>
nnoremap <S-left> E
nnoremap <S-h> E
nnoremap <S-right> W
nnoremap <S-l> W
nnoremap <C-home> gg
nnoremap <C-end> G

" Save / Close ...
map <C-s> :w<CR>
imap <C-s> :w<CR>

" Fast quit
map <C-q> :qa<CR>

" Buffer operations
nnoremap <C-W> :bwipeout<cr>
nnoremap <C-N> :only<cr>

" Textmanip
" toggle insert/replace with <F10>
nmap <F10> <Plug>(textmanip-toggle-mode)
xmap <F10> <Plug>(textmanip-toggle-mode)

" Yoink
nmap <leader>p <plug>(YoinkRotateBack)
nmap <leader>[ <plug>(YoinkRotateForward)

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

" Vem-tabine move through tabs
nmap <C-left> <Plug>vem_prev_buffer-
nmap <C-right> <Plug>vem_next_buffer-

