return {
  'sindrets/diffview.nvim',
  init = function()
    vim.keymap.set('n', '<leader>gD', ':DiffviewOpen<CR>', { desc = '[G]it [D]iffview (for working tree)' })
    vim.keymap.set('n', '<leader>gH', ':DiffviewOpen HEAD~<CR>', { desc = '[G]it diffview compared to [H]EAD~' })
  end
}
