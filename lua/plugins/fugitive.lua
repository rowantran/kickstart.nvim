return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', ':Gstatus<CR>', { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>gd', ':Git<CR>', { desc = '[G]it [D]iff' })
  end
}
