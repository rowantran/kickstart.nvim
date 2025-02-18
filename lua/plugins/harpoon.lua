return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    -- Keymaps
    vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = '[A]dd to Harpoon' })
    vim.keymap.set('n', '<leader>h', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = '[H]arpoon menu' })

    vim.keymap.set('n', '<C-s>', function() harpoon:list():select(1) end, { desc = 'Select harpoon 1' })
    vim.keymap.set('n', '<C-t>', function() harpoon:list():select(2) end, { desc = 'Select harpoon 2' })
    vim.keymap.set('n', '<C-n>', function() harpoon:list():select(3) end, { desc = 'Select harpoon 3' })
    vim.keymap.set('n', '<C-e>', function() harpoon:list():select(4) end, { desc = 'Select harpoon 4' })
  end
}
