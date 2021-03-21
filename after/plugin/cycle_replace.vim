" Call the function with the cursor under a word in normal mode. 
" The word will be replaced with the next word of a provided list.
"
" For example, passing a list like this ['true', 'false', 'undefined', 'null']...
"
"     // Example code
"     let myBool = true
"
" ...and pressing CTRL+L over the word "true" will replace it with the next word on the list: That is, "false".
"
" After pressing once:
"     let myBool = false
"
" After pressing twice:
"     let myBool = undefined
"
" etc...

" You can map it like this:
" nnoremap <C-L> :execute ":call CycleReplace(expand('<cword>'), ['true', 'false', 'undefined', 'null'])" <CR> 

" Multiple lists:
nnoremap <C-L> :execute ":call CycleReplaceMany(expand('<cword>'), [ 
      \ ['let', 'const'], 
      \ ['let', 'var'], 
      \ ['true', 'false'],
      \ ['undefined', 'null'],
      \ ['width', 'height'],
      \ ['x', 'y', 'z'],
      \ ['on', 'off'],
      \ ['yes, no'],
      \ ['enable', 'disable'],
      \ ['enabled', 'disabled'],
      \ ['active', 'inactive'],
      \ ['up', 'down'],
      \ ['left', 'right'],
      \ ])"<cr>

" <C-L> is the key mapping
" Your provided list is the second argument, in this case, ['true', 'false', 'undefined', 'null']
" It can be anything like: ["on", "off"]

function CycleReplaceMany(word, lists)
  
  for i in a:lists
    if CycleReplace(a:word, i) 
      return
    endif
  endfor

  echom "Nothing to replace."

endfunction

function CycleReplace(word, list)

  let replaced = a:word

  let count = 0
  for i in a:list

    if a:word == i
      if count+1 < len(a:list)
        let replaced = a:list[count+1]
      else
        let replaced = a:list[0]
      endif
    break
    endif
    
  let count += 1
  endfor
  
  if replaced != a:word 
    execute ":normal m`ciw" . replaced
    execute ":normal ``"
    echom a:word . " -> " . replaced
    return 1
  endif

  return 0

endfunction
