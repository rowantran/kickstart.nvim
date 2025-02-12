return {
  'christoomey/vim-tmux-navigator',
  init = function()
    -- Define our own mappings
    vim.g.tmux_navigator_no_mappings = 1
  end,
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
    "TmuxNavigatorProcessList",
  },
  keys = {
    { "<c-j>", vim.cmd.TmuxNavigateLeft,  desc = 'Move focus to the left window' },
    { "<c-h>", vim.cmd.TmuxNavigateDown,  desc = 'Move focus to the lower window' },
    { "<c-l>", vim.cmd.TmuxNavigateUp,    desc = 'Move focus to the upper window' },
    { "<c-k>", vim.cmd.TmuxNavigateRight, desc = 'Move focus to the right window' },
    { "<c-\\>", vim.cmd.TmuxNavigateDown , desc ='Move focus to the previous window' },
  },
}
