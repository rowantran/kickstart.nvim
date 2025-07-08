-- Config
local currentThemeFile = vim.fn.expand '~/.desktop_scripts/current_theme'
local dark_colorscheme = 'gruvbox-material'
local light_colorscheme = 'gruvbox-material'
-- end config

local function load_colorscheme()
  local file = assert(io.open(currentThemeFile))
  local content = file:read '*a'
  file:close()

  local is_dark = content:find '^0'
  vim.o.background = (is_dark and 'dark' or 'light')
  local colorscheme = (is_dark and dark_colorscheme or light_colorscheme)
  vim.cmd.colorscheme(colorscheme)

  for _, hlgroup in ipairs({'Normal', 'NormalNC'}) do
    vim.api.nvim_set_hl(0, hlgroup, { bg = 'none' })
  end
end

local w = vim.uv.new_fs_event()

local watch_file
local function on_change(err, fname, status)
  load_colorscheme()
  -- Debounce: stop/start
  w:stop()
  watch_file()
end

watch_file = function()
  w:start(currentThemeFile, {}, vim.schedule_wrap(on_change))
end

return {
  {
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
      load_colorscheme()

      -- Start watching theme file to automatically reload colorscheme once it changes
      watch_file()

      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
      vim.cmd.hi 'DiffText gui=bold guifg=none guibg=none'
    end,
  },
  {
    "ellisonleao/gruvbox.nvim"
  },
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_enable_italic = true
    end
  },
  {
    "lifepillar/vim-solarized8",
    branch = "neovim"
  },
}
