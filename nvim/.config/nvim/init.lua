---------------------------------------------
-- MY NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
---------------------------------------------
if vim.g.vscode then
--vscode-specific configurations
else
-- A builtin Lua module which byte-compiles and caches Lua files (speeds up load times).
vim.loader.enable()

-- needed for python provider
-- vim.g.python3_host_prog = '/usr/bin/python3'
-- python3 -m pip install pynvim --user
-- python3 -m pip install --upgrade pip --user

-- plugins that are in use
require("vim-plug")
-- general configuration
require("options")
-- custom keymaps
require("mappings")
end
