local fn = vim.fn

function lspHover()
  -- fn.execute(':LspUI hover')
  fn.execute(':Lspsaga hover_doc')
end

function lspRename()
  -- fn.execute(':LspUI rename')
  fn.execute(':Lspsaga rename')
end

function lspCodeAction()
  fn.execute(':Lspsaga code_action')
end

function lspDefinitions()
  fn.execute(':Glance definitions')
end

function lspDiagNext()
  -- fn.execute(':LspUI diagnostic next')
  fn.execute(':Lspsaga diagnostic_jump_next')
end

function lspDiagPrev()
  -- fn.execute(':LspUI diagnostic prev')
  fn.execute(':Lspsaga diagnostic_jump_prev')
end

function lspDiagToggle()
  local config = vim.diagnostic.config
  local vt = config().virtual_text
  config({ virtual_text = not vt, underline = not vt, signs = not vt })
end

function lspDiagWindow()
  fn.execute(':TroubleToggle')
end

function lspPeek()
  fn.execute(':Lspsaga peek_definition')
end

function lspReferences()
  fn.execute(':Glance references')
end

function lspOutline()
  fn.execute(':silent! Navbuddy')
  -- local success, error = pcall(fn.execute(':Navbuddy'))
  -- if not success then
  --   fn.execute(':Lspsaga outline')
  -- end
end

function lspFormat()
  vim.lsp.buf.format()
end

function lspImplementation()
  vim.lsp.buf.implementation()
end

function lspLineDiagnostics()
  vim.diagnostic.open_float(nil, { focus = false })
end

function lspSymbols()
  fn.execute(':Telescope lsp_document_symbols')
end

function lspTypeDefs()
  fn.execute(':Glance type_definitions')
end

return {
  lspHover, lspRename, lspCodeAction, lspDefinitions,
  lspDiagWindow, lspDiagToggle, lspDiagNext, lspDiagPrev, lspPeek, lspReferences,
  lspOutline, lspFormat, lspImplementation, lspLineDiagnostics,
  lspSymbols, lspTypeDefs
}
