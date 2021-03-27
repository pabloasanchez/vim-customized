"mouse_bindings.vim - Mouse bindings

" Mouse remaps
" Performs a BLines on word under cursor on double click
nnoremap <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>
" nnoremap <S-LeftMouse> :execute "BLines ".expand("<cword>")<cr>
nnoremap <C-LeftMouse> <LeftMouse>:<C-U>let @/='\<'.expand("<cword>").'\>'<CR>:set hlsearch<CR>:execute "BLines ".expand("<cword>")<cr>
nnoremap <S-LeftMouse> <LeftMouse>:<C-U>let @/='\<'.expand("<cword>").'\>'<CR>:set hlsearch<CR>

