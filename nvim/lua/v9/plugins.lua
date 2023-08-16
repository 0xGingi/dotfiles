local call = vim.call

local cmd = vim.cmd
local Plug = vim.fn['plug#']
local PATH = "~/.config/nvim/plugged"

call('plug#begin', PATH)
Plug 'catppuccin/nvim' --, { 'as': 'catppuccin' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'


call'plug#end'
