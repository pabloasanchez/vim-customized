local fn = vim.fn
local ui = vim.ui

-- 'Save As' prompt
function saveAs()
  ui.input({ prompt = "Save file as: " }, function(input)
    if input then
      fn.execute(":saveas " .. input)
    end
  end)
end

function new()
  vim.cmd('enew')
end

function clipboard()
  fn.execute(":Telescope neoclip")
end

function recent()
  fn.execute(":Telescope oldfiles")
end

vim.api.nvim_create_user_command("SaveAs", saveAs, {})
vim.api.nvim_create_user_command("New", new, {})
vim.api.nvim_create_user_command("Clipboard", clipboard, {})
vim.api.nvim_create_user_command("Recent", recent, {})




