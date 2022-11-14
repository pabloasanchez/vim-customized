" set laststatus=0

" hi WinBar cterm=bold
" hi WinBarNC cterm=inverse

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction
   
set winbar=
set winbar+=%=
set winbar+=%f
set winbar+=%#DiagnosticError#
set winbar+=\ %m

set statusline=
set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=%y
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=%m
set statusline+=%#StatusLineNC#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=%#Pmenu#
set statusline+=\ %p%%
set statusline+=%#Pmenu#
set statusline+=\ %l:%c
