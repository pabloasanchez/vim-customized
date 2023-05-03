"
" Faster :
"
nnoremap <leader><SPACE> :
nnoremap <c-SPACE> :


"
" Quick UI Menu
"
nnoremap <A-SPACE> :call quickui#menu#open()<RETURN>
" noremap <A-f> :call quickui#menu#open()<cr>
noremap <leader><leader> :call quickui#menu#open()<cr>

" 
" Command line remaps (hjkl instead of arrows)
"
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>


"
" Better visual yank/paste
"
vnoremap p "0p


" 
" Ctrl+A and Yode
"
nnoremap <C-A> :norm 0ggVG<Enter>
" vnoremap <A-Enter> :'<,'>YodeCreateSeditorFloating<Enter>


"
" Move between buffers with Tab
"
nnoremap <A-Tab> :wincmd w<CR>
nnoremap <Tab> :call <SID>next_visible_buffer(1)<CR>
nnoremap <S-Tab> :call <SID>next_visible_buffer(0)<CR>
nnoremap <leader><TAB> :Telescope buffers<cr>
map <leader><Tab> :Telescope buffers<CR>
nnoremap <C-b> :Telescope buffers<CR>


"
" vsplit shortcut
"
nnoremap <A-Enter> :vsplit<CR>
nnoremap <A-BS> :split<CR>


"
" Remember session (splits)
nnoremap <C-N> :mksession! .session <bar> :only<cr>
nnoremap <leader>n :source .session<CR>
" --- or ---
" Replaced with windows.nvim
" nnoremap <C-N> :WindowsMaximize<ENTER>


"
" Split resizing
"
nnoremap <A-r> :WinResizerStartResize<ENTER>


"
" Close and hide buffers
"
" nnoremap <A-w> :confirm bd<cr>
" nnoremap <A-w> :bp<BAR>confirm<BAR>bd<CR> 
nnoremap <C-W> :hide<cr>
nnoremap <A-w> :Sayonara!<cr>


"
" Ctrl+P and Command History
"
" nnoremap <A-p> :GitFiles<Enter>
nnoremap <A-p> :Files<Enter>
nnoremap <C-p> :Telescope find_files<Enter>
nnoremap <C-h> :Telescope oldfiles<cr>
nnoremap <SPACE> :Telescope command_history<cr>
nnoremap <leader>h :Telescope oldfiles<cr>
nnoremap <leader>b :Telescope buffers<cr>

function! s:next_visible_buffer(forward)
  let operation = "bnext"

  if (a:forward == 0)
    let operation = "bprev"
  endif

  execute operation

  if (len(win_findbuf(bufnr('%'))) > 1)
    execute operation
  endif
endfunction


"
" CTRL + F - Find lines in buffer, lines in all buffers, lines in ripgrep
"
nnoremap <C-f> :Telescope current_buffer_fuzzy_find<Enter>
nnoremap <leader>l :Lines<Enter>
nnoremap <A-f> :Rg<Enter>
nnoremap <leader>ff :Telescope resume<Enter>


"
" Terminals
"
" nnoremap <silent><F4> :FloatermNew --autoclose=1 --width=1.0 --height=1.0 ranger<cr>
nnoremap <C-l> :FloatermNew --autoclose=1 --width=0.8 --height=0.8 ranger<cr>:only<cr>


"
" Lazygit
"
nnoremap <C-g>     :FloatermNew --autoclose=1 --width=1.0 --height=1.0 --title=Git --disposable lazygit<cr>
nnoremap <leader>g :FloatermNew --autoclose=2 --width=1.0 --height=1.0 --title=Git --disposable lazygit<cr>


"
" Spawn a new terminal with ;t
"
nnoremap <C-t>     :FloatermToggle terminal<cr>


"
" Cycle through terminals
"
" TODO
" nmap <leader>[ :CocList -A --normal floaterm<cr>
" nmap <leader>] :CocList -A --normal floaterm<cr>


"
" Hide locationlist, terminals and other buffers and clears search matches
"
" nnoremap <ESC> :lclose<bar>:set hls!<bar>:hide<cr>
nnoremap <ESC> :set hls! <CR>


"
" For exiting terminal mode 
"
" tnoremap <F12> <C-\><C-n> <bar> :hide <cr>
tnoremap <leader>t  <C-\><C-n> <BAR> :hide <ENTER>
tnoremap <ESC><ESC>  <C-\><C-n> <BAR> :hide <BAR> :FloatermKill <ENTER>


"
" For being able to alt-tab from term windows
"
tnoremap <A-Tab> <C-\><C-n> <bar> :wincmd w<CR>


"
" Moving terminals while on TERMINAL mode
"
tnoremap <leader>[ <C-\><C-n> <bar> :FloatermPrev <cr>
tnoremap <leader>] <C-\><C-n> <bar> :FloatermNext <cr>


"
" Marks
"
nnoremap <leader>m :Marks<cr>


"
" VSCode style mappings for duplicating current line up or down
" C-S is compatible with Mac
"
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

nmap <C-j> <Plug>(textmanip-move-down)
nmap <C-k> <Plug>(textmanip-move-up)

xmap <C-j> <Plug>(textmanip-move-down)
xmap <C-k> <Plug>(textmanip-move-up)
xmap <C-h> <Plug>(textmanip-move-left)
xmap <C-l> <Plug>(textmanip-move-right)

nmap <C-down> <Plug>(textmanip-move-down)
nmap <C-up> <Plug>(textmanip-move-up)

xmap <C-down> <Plug>(textmanip-move-down)
xmap <C-up> <Plug>(textmanip-move-up)
xmap <C-left> <Plug>(textmanip-move-left)
xmap <C-right> <Plug>(textmanip-move-right)

"
" VSCode style delete line
"
nnoremap <C-D> dd

"
" VSCode style move and duplicate in insert mode
"
imap <C-down> <ESC><Plug>(textmanip-move-down)i
imap <C-up> <ESC><Plug>(textmanip-move-up)i
imap <C-S-down> <ESC><Plug>(textmanip-duplicate-up)i
imap <C-A-j> <ESC><Plug>(textmanip-duplicate-up)i
imap <C-S-up> <ESC><Plug>(textmanip-duplicate-up)i
imap <C-A-k> <ESC><Plug>(textmanip-duplicate-up)i


"
" Insert mode misc shortcuts
"
imap <A-BS> <Delete>
imap :w <ESC>:w
imap <C-Z> <ESC>:undo<Return>
imap <C-D> <ESC>ddi
" imap <C-H> <Left>
inoremap <C-h> <C-o>h
imap <C-J> <Down>
imap <C-K> <Up>
imap <C-L> <Right>
imap <C-V> <C-O>h<C-O>p


"
" Scrolling and movement
"
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

"
" Save / Close ...
"
map <C-s> :w<CR>
imap <C-s> :w<CR>


"
" Fast quit
"
map <C-q> :confirm qa<CR>


"
" Textmanip
"
" toggle insert/replace with <F10>
nmap <F10> <Plug>(textmanip-toggle-mode)
xmap <F10> <Plug>(textmanip-toggle-mode)


" 
" Goyo
"
nnoremap <silent><C-\> :Goyo<ENTER>
nnoremap <A-\> :Limelight<ENTER>
nnoremap <C-A-\> :Limelight!<ENTER>


"
" JS Debugger
"
nnoremap <F4> :NodeInspectStart<cr>
nnoremap <F5> :NodeInspectConnect("127.0.0.1:9229")<cr>
nnoremap <F6> :NodeInspectRun<cr>
nnoremap <F7> :NodeInspectStop<cr>
nnoremap <F8> :NodeInspectStepOver<cr>
nnoremap <F9> :NodeInspectToggleBreakpoint<cr>
" nnoremap <F10> :NodeInspectStepInto<cr>

