return {
  'tpope/vim-fugitive',
  init = function()
    vim.keymap.set('n', '<leader>gs', ':Git<CR>', { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>gd', ':Gdiff<CR>', { desc = '[G]it [d]iff (for current file)' })
  end
}
