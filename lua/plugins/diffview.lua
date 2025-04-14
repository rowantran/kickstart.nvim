return {
  'sindrets/diffview.nvim',
  init = function()
    vim.keymap.set('n', '<leader>gD', ':DiffviewOpen<CR>', { desc = '[G]it [D]iffview (for working tree)' })
  end
}
