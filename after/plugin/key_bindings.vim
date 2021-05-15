" key_bindings.vim - Custom key bindings

" Faster :
nnoremap <leader><SPACE> :

" Faster / with fzf
" nnoremap / :BLines<Enter>

" Move between buffers with Tab
" nnoremap <Tab> :bnext<CR>
nnoremap <Tab> :wincmd w<CR>
nnoremap <S-Tab> :wincmd =<CR>

" Ctrl+P and Command History
nnoremap <C-p> :GitFiles<Enter>
nnoremap <SPACE> :History:<cr>
nnoremap <leader>h :History<cr>

" Terminals

" Ranger through Floaterm 
nnoremap <silent><F4> :FloatermNew --autoclose=1 --width=1.0 --height=1.0 ranger<cr>
" nnoremap <leader>r :FloatermNew --autoclose=1 --width=1.0 --height=1.0 ranger<cr>
nnoremap <leader>r :FloatermNew --autoclose=1 --width=0.7 --height=0.7 ranger<cr>:only<cr>

" Lazygit
nnoremap <C-g>     :FloatermNew --autoclose=1 --width=1.0 --height=1.0 --title=Git --disposable lazygit<cr>
nnoremap <leader>g :FloatermNew --autoclose=2 --width=1.0 --height=1.0 --title=Git --disposable lazygit<cr>

" Spawn a new terminal and hide it, to be used as a pop up terminal with F12
execute ":FloatermNew --title=Terminal --name=terminal --autoclose=2 --silent fish"
nnoremap <leader>t     :FloatermToggle terminal<cr>
nnoremap <F12>         :FloatermNew --autoclose=2 fish<cr>

" Cycle through terminals
nmap <leader>[ :CocList -A --normal floaterm<cr>
nmap <leader>] :CocList -A --normal floaterm<cr>
" nmap <leader>] :FloatermNext<cr>

" Hide locationlist, terminals and other buffers and clears search matches
" nnoremap <ESC> :lclose<bar>:set hls!<bar>:hide<cr>
nnoremap <ESC> :set hls! <CR>

" For exiting terminal mode on ESC
tnoremap <F12> <C-\><C-n> <bar> :hide <cr>
tnoremap <leader>t  <C-\><C-n> <bar> :hide <cr>
" tnoremap <Esc> <C-\><C-n> <bar> :hide <cr>

" Moving terminals while on TERMINAL mode
tnoremap <leader>[ <C-\><C-n> <bar> :FloatermPrev <cr>
tnoremap <leader>] <C-\><C-n> <bar> :FloatermNext <cr>

" Open Tags ith F2
" nnoremap <F2>      :BTags<cr>
" nnoremap <leader>b :BTags<cr>

" Open NERDTree with F3
" nnoremap <F3> :NERDTreeTabsOpen<cr> <bar> :NERDTreeTabsFind<cr>

" Marks
nnoremap <leader>m :Marks<cr>

" CTRL + F - Find lines in buffer, lines in all buffers, lines in ripgrep
nnoremap <C-f> :BLines<Enter>
nnoremap <leader>l :Lines<Enter>
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

" Simple remaps to duplicate 
" nnoremap <C-S-down> yyp
" nnoremap <C-S-j> yyp
" nnoremap <C-S-up> yypk
" nnoremap <C-S-k> yypk

" VSCode style mappings for moving current line up or down
nmap <C-j> <Plug>(textmanip-move-down)
nmap <C-k> <Plug>(textmanip-move-up)

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

" Simple remaps to move
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
nnoremap <A-k> 4k
nnoremap <A-j> 4j

nnoremap <S-down> 4<C-e>
nnoremap <A-S-j> 4<C-e>
" nnoremap <S-j> 4<C-e>

nnoremap <S-up> 4<C-y>
nnoremap <A-S-k> 4<C-y>
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
" nnoremap <C-W> :hide<cr>
nnoremap <C-N> :only<cr>

" Textmanip
" toggle insert/replace with <F10>
nmap <F10> <Plug>(textmanip-toggle-mode)
xmap <F10> <Plug>(textmanip-toggle-mode)

" coc-yank
nmap <leader>p :CocList -A --normal yank<CR>

" Vem-tabine move through tabs
nmap <C-left> <Plug>vem_prev_buffer-
nmap <C-right> <Plug>vem_next_buffer-
nmap <A-h>     <Plug>vem_prev_buffer-
nmap <A-l>     <Plug>vem_next_buffer-
nmap <C-S-left> <Plug>vem_move_buffer_left-
nmap <C-S-right> <Plug>vem_move_buffer_right-
" Regular buffers
" nmap <C-left> :bnext<CR>
" nmap <C-right> :bprev<CR>
" nmap <A-h>     :bnext<CR>
" nmap <A-l>     :bprev<CR>

" TODO C-backspace CocList location
