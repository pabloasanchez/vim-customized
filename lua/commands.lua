local fn = vim.fn
local ui = vim.ui

-- 'Save As' prompt
function saveAs()
  -- Without plugins...
  -- ui.input({ prompt = "Save file as: " }, function(input)
  --   if input then
  --     fn.execute(":saveas " .. input)
  --   end
  -- end)
  local Input = require("nui.input")
  local event = require("nui.utils.autocmd").event

  local input = Input({
    position = "50%",
    size = { width = 20, },
    border = {
      style = "single",
      text = {
        top = "[Save as]",
        top_align = "center",
      },
    },
    win_options = {
      winhighlight = "Normal:Normal,FloatBorder:Normal",
    },
  }, {
    prompt = "> ",
    default_value = "",
    on_close = function()
      print("Input Closed!")
    end,
    on_submit = function(value)
      if value then
        print("Saved: " .. value)
        fn.execute(":saveas " .. value)
      end
    end,
  })

  -- mount/open the component
  input:mount()
  
  -- unmount component when cursor leaves buffer
  input:on(event.BufLeave, function()
    input:unmount()
  end)
end

function new()
  vim.cmd('enew')
end

function clipboard()
  fn.execute(":Telescope neoclip")
end

vim.api.nvim_create_user_command("SaveAs", saveAs, {})
vim.api.nvim_create_user_command("New", new, {})
vim.api.nvim_create_user_command("Clipboard", clipboard, {})




