# Lua migration 

This documents the transition to Lua config + additional Lua/nvim notes
 
```
vim.cmd("set notimeout")
```
This is a safety net, whatever string you pass as parameter to vim.cmd will be interpreted as VimL. For multiple lines, wrap string in double brackets:

```
vim.cmd([[
set notimeout
set encoding=utf-8
]])
```

`vim.g` is a table represeting global variables

`vim.g.mapleader = ","` is equivalent of `let g:mapleader = ','` 

`vim.opt.encoding="utf-8"` is equivalent of `set encoding=utf-8;`

`vim.opt` provides several conveniences for setting and controlling options
from within Lua.

The behavior of |vim.o|, |vim.bo|, |vim.wo|, and |vim.go| is designed to
follow that of |:set|, |:setlocal|, and |:setglobal| which can be seen in the
table below:

    lua            command      global_value       local_value 
vim.o           :set                set                set
vim.bo/vim.wo   :setlocal            -                 set
vim.go          :setglobal          set                 -

Examples: 

To set a boolean toggle:
  In Vimscript:
      `set number`

  In Lua:
      `vim.opt.number = true`

To set an array of values:
  In Vimscript:
      `set wildignore=*.o,*.a,__pycache__`

  In Lua, there are two ways you can do this now. One is very similar to
  the Vimscript form:
      `vim.opt.wildignore = '*.o,*.a,__pycache__'`

  However, vim.opt also supports a more elegent way of setting
  list-style options by using lua tables:
      `vim.opt.wildignore = { '*.o', '*.a', '__pycache__' }`

To replicate the behavior of |:set+=|, use:

  -- vim.opt supports appending options via the "+" operator
  vim.opt.wildignore = vim.opt.wildignore + { "*.pyc", "node_modules" }

  -- or using the `:append(...)` method
  vim.opt.wildignore:append { "*.pyc", "node_modules" }

To replicate the behavior of |:set^=|, use:

  -- vim.opt supports prepending options via the "^" operator
  vim.opt.wildignore = vim.opt.wildignore ^ { "new_first_value" }

  -- or using the `:prepend(...)` method
  vim.opt.wildignore:prepend { "new_first_value" }

To replicate the behavior of |:set-=|, use:

  -- vim.opt supports removing options via the "-" operator
  vim.opt.wildignore = vim.opt.wildignore - { "node_modules" }

  -- or using the `:remove(...)` method
  vim.opt.wildignore:remove { "node_modules" }

To set a map of values:
  In Vimscript:
      `set listchars=space:_,tab:>~`

  In Lua:
      `vim.opt.listchars = { space = '_', tab = '>~' }`


In any of the above examples, to replicate the behavior |setlocal|, use
`vim.opt_local`. Additionally, to replicate the behavior of |setglobal|, use
`vim.opt_global`.init

### init.lua

Neovim supports loading an `init.lua` file for configuration instead of the usual `init.vim`.

Note: `init.lua` is of course _completely_ optional. Support for `init.vim` is not going away and is still a valid option for configuration. Do keep in mind that some features are not 100% exposed to Lua yet.

See also:
- [`:help config`](https://neovim.io/doc/user/starting.html#config)

### Modules

Lua modules are found inside a `lua/` folder in your `'runtimepath'` (for most users, this will mean `~/.config/nvim/lua` on \*nix systems and `~/AppData/Local/nvim/lua` on Windows). You can `require()` files in this folder as Lua modules.

Let's take the following folder structure as an example:

```text
📂 ~/.config/nvim
├── 📁 after
├── 📁 ftplugin
├── 📂 lua
│  ├── 🌑 myluamodule.lua
│  └── 📂 other_modules
│     ├── 🌑 anothermodule.lua
│     └── 🌑 init.lua
├── 📁 pack
├── 📁 plugin
├── 📁 syntax
└── 🇻 init.vim
```

The following Lua code will load `myluamodule.lua`:

```lua
require('myluamodule')
```
Similarly, loading `other_modules/anothermodule.lua` is done like so:

```lua
require('other_modules.anothermodule')
-- or
require('other_modules/anothermodule')
```

Path separators are denoted by either a dot `.` or a slash `/`.

A folder containing an `init.lua` file can be required directly, without having to specify the name of the file.

```lua
require('other_modules') -- loads other_modules/init.lua
```

Requiring a nonexistent module or a module which contains syntax errors aborts the currently executing script.
`pcall()` may be used to prevent errors.

```lua
local ok, _ = pcall(require, 'module_with_error')
if not ok then
  -- not loaded
end
```

Notice the absence of a `.lua` extension.

# Vim-plug
```
vim.call('plug#begin', '~/.config/nvim/plugged')

-- ...

vim.call('plug#end')
```


# Defining keymaps

Keymaps can be set via vim.api.nvim_set_keymap(). It takes 4 arguments: the mode for which the mapping will take effect, the key sequence, the command to execute and a table of options (:h :map-arguments).

```
local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables


options = { noremap = true }
map('n', '<leader><esc>', ':nohlsearch<cr>', options)
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)
```

# LSP
- |vim.lsp.buf.hover()|
- |vim.lsp.buf.format()|
- |vim.lsp.buf.references()|
- |vim.lsp.buf.implementation()|
- |vim.lsp.buf.code_action()|

` :lua =vim.lsp.buf.implementation() `


# Resources
https://www.notonlycode.org/neovim-lua-config/
https://github.com/nanotee/nvim-lua-guide/blob/master/README.md
https://neovim.io/doc/user/lua.html
https://icyphox.sh/blog/nvim-lua/
