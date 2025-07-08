return {
  'karb94/neoscroll.nvim',
  opts = {
    mappings = {
      '<C-u>', '<C-d>',
    },
    easing = 'quadratic',
    duration_multiplier = 0.6,
  },
  enabled = false
  -- enabled = function()
  --   local hostname = vim.fn.hostname()
  --   return (string.find(hostname, "compute.internal") == nil) and (string.find(hostname, "dev%-dsk") == nil)
  -- end
}
