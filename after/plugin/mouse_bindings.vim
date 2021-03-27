"mouse_bindings.vim - Mouse bindings

" Mouse remaps
" Highlights all occurrences on double click 
" TODO only use Tern for JS files
nnoremap <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>
nnoremap <3-LeftMouse> :TernRefs<cr>
nnoremap <S-LeftMouse> <LeftMouse>:<C-U>let @/='\<'.expand("<cword>").'\>'<CR>:set hlsearch<CR>

" On CTRL LeftMouse, highlight all occurrences and run TernDef
nnoremap <C-LeftMouse> <LeftMouse>:<C-U>:TernDef<cr>

" Can also be used with BLines
" nnoremap <C-LeftMouse> <LeftMouse>:<C-U>let @/='\<'.expand("<cword>").'\>'<CR>:set hlsearch<CR>:execute "BLines ".expand("<cword>")<cr>

