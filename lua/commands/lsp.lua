local fn = vim.fn

function lspHover()
  fn.execute(':LspUI hover')
end

function lspRename()
  fn.execute(':LspUI rename')
end

function lspCodeAction()
  fn.execute(':LspUI code_action')
end

function lspDefinitions()
  fn.execute(':Glance definitions')
end

function lspDiagNext()
  fn.execute(':LspUI diagnostic next')
end

function lspDiagPrev()
  fn.execute(':LspUI diagnostic prev')
end

function lspPeek()
  fn.execute(':LspUI peek_definition')
end

function lspReferences()
  fn.execute(':Glance references')
end

function lspOutline()
  fn.execute(':Navbuddy')
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
  fn.execute(':Telescope lsp_document_symbols') 
end

function lspTypeDefs()
  fn.execute(':Glance type_definitions') 
end

return {
  lspHover, lspRename, lspCodeAction, lspDefinitions, 
  lspDiagNext, lspDiagPrev, lspPeek, lspReferences, 
  lspOutline, lspFormat, lspImplementation, lspLineDiagnostics, 
  lspSymbols, lspTypeDefs 
}
