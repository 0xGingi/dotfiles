local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
    if opts then 
      options = vim.tbl_extend('force', options, opts)
    end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end

vim.g.mapleader = " "
map("n", "<leader>q", ":NvimTreeToggle<cr>", opts)
map("n", "<leader>w", ":NvimTreeCollapse<cr>", opts)
map("n", "<leader>f", ":Telescope find_files<cr>", opts)
map("n", "<leader>g", ":Telescope live_grep<cr>", opts)
map("n", "<leader>1", ":BufferPrevious<cr>", opts)
map("n", "<leader>2", ":BufferNext<cr>", opts)
