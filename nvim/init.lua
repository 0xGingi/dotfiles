require("plugins.plugins")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.wo.number = true
vim.opt.termguicolors = true

require('catppuccin').setup({
	flavour = "mocha"
})
vim.cmd.colorscheme "catppuccin"
require('plenary')
require('telescope')
require('gitsigns')
require('barbar')
require('nvim-web-devicons')
require('barbar').setup({
  animation = true,
  clickable = true
})
require('noice')
require('nvim-treesitter')
require('notify')
require('core/keymaps')
require("nvim-tree").setup({
  on_attach = my_on_attach,
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
require("presence").setup({
	auto_update = true
})
