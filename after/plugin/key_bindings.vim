" Command line remaps (hjkl instead of arrows)
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" For exiting terminal mode 
" tnoremap <F12> <C-\><C-n> <bar> :hide <cr>
" tnoremap <leader>t  <C-\><C-n> <BAR> :hide <ENTER>
" tnoremap <ESC><ESC>  <C-\><C-n> <BAR> :hide <BAR> :FloatermKill <ENTER>
" tnoremap <ESC><ESC>  <C-\><C-n> <BAR> :hide <ENTER>
tnoremap <ESC><ESC>  <C-\><C-n> <BAR> :hide <BAR> :FloatermHide terminal <ENTER>
tnoremap <C-q>  <C-\><C-n> <BAR> :hide <BAR> :FloatermKill <ENTER>

" For being able to alt-tab from term windows
tnoremap <A-Tab> <C-\><C-n> <bar> :wincmd w<CR>

" Moving terminals while on TERMINAL mode
tnoremap <leader>[ <C-\><C-n> <bar> :FloatermPrev <cr>
tnoremap <leader>] <C-\><C-n> <bar> :FloatermNext <cr>

" Insert mode misc shortcuts
imap <A-BS> <Delete>
imap :w <ESC>:w
imap <C-Z> <ESC>:undo<Return>
imap <C-D> <ESC>ddi
inoremap <C-h> <C-o>h
imap <C-J> <Down>
imap <C-K> <Up>
imap <C-L> <Right>
imap <C-V> <C-O>h<C-O>p
" imap <C-e> <ESC>:Emmet<ENTER>

" Scrolling and movement
nnoremap <A-up> 4k
nnoremap <A-down> 4j
nnoremap <A-S-k> 4k
nnoremap <A-S-j> 4j

nnoremap <S-down> 4<C-e>
nnoremap <A-j> 4<C-e>

nnoremap <S-up> 4<C-y>
nnoremap <A-k> 4<C-y>
nnoremap <S-k> 4<C-y>

nnoremap <S-left> E
nnoremap <S-h> E

nnoremap <S-right> W
nnoremap <S-l> W

nnoremap <C-home> gg
nnoremap <C-end> G

nnoremap <A-i> zt

" Save / Close ...
map <C-s> :w<CR>
imap <C-s> :w<CR>
xmap <C-s> :w<CR>

