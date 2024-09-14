-- Swap hjkl movement keys to make them more usable in Colemak-DH
vim.keymap.set('', 'l', 'k')
vim.keymap.set('', 'h', 'j')
vim.keymap.set('', 'j', 'h')
vim.keymap.set('', 'k', 'l')

-- Also swap movement keys for navigating visual lines
vim.keymap.set('n', 'gl', 'gk')
vim.keymap.set('n', 'gh', 'gj')
