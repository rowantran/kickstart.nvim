return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  init = function()
    local oil = require('oil')
    vim.keymap.set('n', '<leader>o', oil.open, { desc = '[O]pen cwd using Oil' })
  end
}
