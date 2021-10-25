" Poor man's distraction free command
function DistractionFree()
  
  echom "f o c u s"
  execute ":set foldcolumn=9" 
  set nonumber
  execute ":GitGutterDisable"

endfunction

function DistractionFreeOff()
  
  execute ":set foldcolumn=0" 
  set number
  execute ":GitGutterEnable"

endfunction

command! DistractionFree :execute ":call DistractionFree()"
command! DistractionFreeOff :execute ":call DistractionFreeOff()"

