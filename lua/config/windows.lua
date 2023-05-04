vim.o.winwidth = 10
vim.o.winminwidth = 10
vim.o.equalalways = false
require('windows').setup({
  autowidth = { --		       |windows.autowidth|
    enable = false,
    winwidth = 3, --		        |windows.winwidth|
    filetype = { --	      |windows.autowidth.filetype|
      help = 2,
    },
  },
  ignore = { --			  |windows.ignore|
    buftype = { "quickfix" },
    filetype = { "NvimTree", "neo-tree", "undotree", "gundo" }
  },
  animation = {
    enable = true,
    duration = 100,
    fps = 30,
    easing = "in_out_sine"
  }
})
