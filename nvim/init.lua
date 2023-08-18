require("v9.plugins")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd.colorscheme "catppuccin"

vim.opt.termguicolors = true

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

