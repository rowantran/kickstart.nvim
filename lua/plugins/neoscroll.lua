return {
  'karb94/neoscroll.nvim',
  opts = {},
  enabled = function()
    local hostname = vim.fn.hostname()
    return not string.find(hostname, "compute.internal") and not string.find(hostname, "dev-dsk")
  end
}
