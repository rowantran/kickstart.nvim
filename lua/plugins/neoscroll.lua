return {
  'karb94/neoscroll.nvim',
  opts = {},
  enabled = function()
    local hostname = vim.fn.hostname()
    return (string.find(hostname, "compute.internal") == nil) and (string.find(hostname, "dev%-dsk") == nil)
  end
}
