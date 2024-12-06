return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  init = function()
    local oil = require('oil')
    vim.keymap.set('n', '<leader>o', function() oil.open('.') end, { desc = '[O]pen cwd using Oil' })
  end
}
