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
" set winbar+=%f
set winbar+=%{&filetype=='no-neck-pain'?'':expand('%f')}
set winbar+=%#DiagnosticError#
set winbar+=\ %m

