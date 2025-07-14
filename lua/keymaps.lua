-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Swap hjkl movement keys to make them more usable in Colemak-DH
vim.keymap.set('', 'j', 'h')
vim.keymap.set('', 'k', 'l')
vim.keymap.set('', 'h', 'j')
vim.keymap.set('', 'l', 'k')

-- Also swap movement keys for navigating visual lines
vim.keymap.set('n', 'gh', 'gj')
vim.keymap.set('n', 'gl', 'gk')

-- Keybinds to open/close splits
vim.keymap.set('n', '<leader>z', '<C-w>s', { desc = 'Open a hori[z]ontal split', remap = true })
vim.keymap.set('n', '<leader>v', '<C-w>v', { desc = 'Open a [v]ertical split', remap = true })
vim.keymap.set('n', '<leader>x', '<C-w>q', { desc = 'Close / [q]uit the current split', remap = true })

-- Tabs
for i = 1,9,1 do
  vim.keymap.set('n', '<leader>'..i, i..'gt', { desc = 'Switch to tab ['..i..']' })
end

vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = '[t]ab[n]ew' })
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { desc = '[t]ab[c]lose' })

-- Clipboard
vim.keymap.set('', '<leader>y', '"+y', { desc = '[y]ank to system clipboard' })
vim.keymap.set('', '<leader>Y', '"+y$', { desc = '[Y]ank rest of line to system clipboard' })
vim.keymap.set('', '<leader>p', '"+p', { desc = '[p]aste from system clipboard' })
vim.keymap.set('', '<leader>P', '"+P', { desc = '[P]aste behind cursor from system clipboard' })

-- Quick paste in insert mode
vim.keymap.set('i', '<C-f>', '<C-r>"')

-- Diagnostics
-- Same as nvim defaults, but manually binding enables the float window.
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
