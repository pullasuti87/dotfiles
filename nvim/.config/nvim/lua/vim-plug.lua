-- install vim-plug if not found
local plug_path = vim.fn.stdpath('data') .. '.config/nvim/autoload/plug.vim'
if vim.fn.glob(plug_path) == '' then
    vim.fn.system('curl -fLo ' .. plug_path .. ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
end

local plug = vim.fn['plug#']
local call = vim.call
--------------------------------------------
-- AWESOME NEOVIM PLUGINS
-- using vim-plug as a package manager

-- make sure you use single quotes
-- custom directory
call("plug#begin", "~/.config/nvim/plugged")

-- colortheme
plug("rose-pine/neovim")
-- lsp config
plug("neovim/nvim-lspconfig")
-- autocompletion
plug("hrsh7th/cmp-nvim-lsp")
plug("hrsh7th/cmp-buffer")
plug("hrsh7th/cmp-path")
plug("hrsh7th/cmp-cmdline")
plug("hrsh7th/nvim-cmp")
-- for luasnip users
plug("L3MON4D3/LuaSnip")
plug("saadparwaiz1/cmp_luasnip")
-- treesitter layer
plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
-- needed for telescope
plug("nvim-lua/plenary.nvim")
plug("nvim-telescope/telescope.nvim", { ["tag"] = "0.1.6" })
-- copilot in lua
plug("zbirenbaum/copilot.lua")

call("plug#end")

--------------------------------------------
-- CONFIGURATIONS

-- require("plugins/cmp")
-- require("plugins/copilot")
-- require("plugins/lspconfig")
-- require("plugins/netrw")
-- require("plugins/rosepine")
-- require("plugins/treesitter")
-- require("plugins/snippets")
