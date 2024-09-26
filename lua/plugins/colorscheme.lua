local function check_colorscheme()
  local file = assert(io.open(os.getenv 'HOME' .. '/.desktop_scripts/current_theme', 'r'))
  local content = file:read '*a'
  file:close()

  if content:find '^0' then
    -- dark mode
    return 'catppuccin-macchiato'
  else
    -- light mode
    return 'catppuccin-latte'
  end
end

return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  opts = {
    transparent_background = true,
  },
  init = function()
    -- Force enable termguicolors (tmux doesn't auto-detect properly)
    vim.opt.termguicolors = true

    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme(check_colorscheme())

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
