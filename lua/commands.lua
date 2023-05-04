local fn = vim.fn
local ui = vim.ui

-- Wrappers
function new()
  vim.cmd('enew')
end

function clipboard()
  fn.execute(":Telescope neoclip theme=cursor")
end

function recent()
  fn.execute(":Telescope oldfiles")
end

function wrap()
  fn.execute(":set wrap!")
end

function saveAs()
  ui.input({ prompt = "Save file as: " }, function(input)
    if input then
      fn.execute(":saveas " .. input)
    end
  end)
end

function lspHover()
  fn.execute(":LspUI hover")
end

function lspRename()
  fn.execute(":LspUI rename")
end

function lspCodeAction()
  fn.execute(":LspUI code_action")
end

function lspDefinitions()
  fn.execute(":Glance definitions")
end

function lspDiagNext()
  fn.execute(":LspUI diagnostic next")
end

function lspDiagPrev()
  fn.execute(":LspUI diagnostic prev")
end

function lspPeek()
  fn.execute(":LspUI peek_definition")
end

function lspReferences()
  fn.execute(":Glance references")
end

function lspOutline()
  fn.execute(":Navbuddy")
end

function lspFormat()
  vim.lsp.buf.format() 
end

function lspImplementation()
  vim.lsp.buf.implementation() 
end

function lspLineDiagnostics()
  vim.diagnostic.open_float(nil, {focus=false})
end

function lspSymbols()
  fn.execute(":Telescope lsp_document_symbols") 
end

function lspTypeDefs()
  fn.execute(":Glance type_definitions") 
end

function findInFiles()
  ui.input({ prompt = "Find in files: " }, function(input)
    if input then
      fn.execute(":Ag " .. input)
    end
  end)
end

function findInBuffers()
  fn.execute(":Lines") --fzf Lines
end

function findInBuffer()
  fn.execute(":Telescope current_buffer_fuzzy_find") 
end

function findResume()
  fn.execute(":Telescope resume") 
end

function git()
  fn.execute(":FloatermNew --autoclose=1 --width=1.0 --height=1.0 --title=Git --disposable lazygit")
end

function marks()
  fn.execute(":Telescope marks")
end

function terminal()
  fn.execute(":FloatermToggle terminal")
end

function removeFromLine(opts)
  fn.execute(":s/" .. opts.args .. "/")
end

function replaceInLine(opts)
   fn.execute(":s/" .. opts.fargs[1] .. "/" .. opts.fargs[2])
end

function back()
  -- fn.execute(":exe \"normal \<c-w>\<c-w>\"") --fzf Lines
end

function glyph()
  fn.execute(":Telescope glyph") 
end

vim.api.nvim_create_user_command("New", new, {})
vim.api.nvim_create_user_command("SaveAs", saveAs, {})
vim.api.nvim_create_user_command("Clipboard", clipboard, {})
vim.api.nvim_create_user_command("Recent", recent, {})
vim.api.nvim_create_user_command("Wrap", wrap, {})

vim.api.nvim_create_user_command("Glyph", glyph, {})

vim.api.nvim_create_user_command("Hover", lspHover, {})
vim.api.nvim_create_user_command("Rename", lspRename, {})
vim.api.nvim_create_user_command("LSPDiagNext", lspDiagNext, {})
vim.api.nvim_create_user_command("LSPDiagPrev", lspDiagPrev, {})
vim.api.nvim_create_user_command("LSPLineDiag", lspLineDiagnostics, {})
vim.api.nvim_create_user_command("Peek", lspPeek, {})
vim.api.nvim_create_user_command("FormatCode", lspFormat, {})
vim.api.nvim_create_user_command("Implementation", lspImplementation, {})
vim.api.nvim_create_user_command("CodeAction", lspCodeAction, {})
vim.api.nvim_create_user_command("FindInBuffers", findInBuffers, {})
vim.api.nvim_create_user_command("FindInFiles", findInFiles, {})
vim.api.nvim_create_user_command("FindInBuffer", findInBuffer, {})
vim.api.nvim_create_user_command("FindResume", findResume, {})
vim.api.nvim_create_user_command("Git", git, {})
vim.api.nvim_create_user_command("Marks", marks, {})
vim.api.nvim_create_user_command("Remove", removeFromLine, { nargs = 1 })
vim.api.nvim_create_user_command("Replace", replaceInLine, { nargs = '*' })
vim.api.nvim_create_user_command("Definitions", lspDefinitions, {})
vim.api.nvim_create_user_command("References", lspReferences, {})
vim.api.nvim_create_user_command("Outline", lspOutline, {})
vim.api.nvim_create_user_command("Symbols", lspSymbols, {})
vim.api.nvim_create_user_command("TypeDefs", lspTypeDefs, {})


