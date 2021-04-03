"mouse_bindings.vim - Mouse bindings

" Mouse remaps
" Highlights all occurrences on double click 

nnoremap <C-LeftMouse> <LeftMouse>:<C-U>norm gd<CR>
nnoremap <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>
nnoremap <3-LeftMouse> :norm gr<CR>

" Can also be used with BLines
" nnoremap <C-LeftMouse> <LeftMouse>:<C-U>let @/='\<'.expand("<cword>").'\>'<CR>:set hlsearch<CR>:execute "BLines ".expand("<cword>")<cr>

