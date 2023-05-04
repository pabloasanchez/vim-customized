local fn = vim.fn
local ui = vim.ui

-- Wrappers
function new()
  vim.cmd('enew')
end

function clipboard()
  fn.execute(":Telescope neoclip")
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

function lspDiagNext()
  fn.execute(":LspUI diagnostic next")
end

function lspDiagPrev()
  fn.execute(":LspUI diagnostic prev")
end

function lspPeek()
  fn.execute(":LspUI peek_definition")
end

function lspFormat()
  vim.lsp.buf.format() 
end

function lspImplementation()
  vim.lsp.buf.implementation() 
end

function findInBuffers()
  fn.execute(":Lines") --fzf Lines
end

function findInBuffer()
  fn.execute(":Telescope current_buffer_fuzzy_find") --fzf Lines
end

function findResume()
  fn.execute(":Telescope resume") --fzf Lines
end

function Back()
  -- fn.execute(":exe \"normal \<c-w>\<c-w>\"") --fzf Lines
end

vim.api.nvim_create_user_command("New", new, {})
vim.api.nvim_create_user_command("SaveAs", saveAs, {})
vim.api.nvim_create_user_command("Clipboard", clipboard, {})
vim.api.nvim_create_user_command("Recent", recent, {})
vim.api.nvim_create_user_command("Wrap", wrap, {})

vim.api.nvim_create_user_command("Hover", lspHover, {})
vim.api.nvim_create_user_command("Rename", lspRename, {})
vim.api.nvim_create_user_command("LSPDiagNext", lspDiagNext, {})
vim.api.nvim_create_user_command("LSPDiagPrev", lspDiagPrev, {})
vim.api.nvim_create_user_command("Peek", lspPeek, {})
vim.api.nvim_create_user_command("FormatCode", lspFormat, {})
vim.api.nvim_create_user_command("Implementation", lspImplementation, {})
vim.api.nvim_create_user_command("CodeAction", lspCodeAction, {})
vim.api.nvim_create_user_command("FindInBuffers", findInBuffers, {})
vim.api.nvim_create_user_command("FindInBuffer", findInBuffer, {})
vim.api.nvim_create_user_command("FindResume", findResume, {})


