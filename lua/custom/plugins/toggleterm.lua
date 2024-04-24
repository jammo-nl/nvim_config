return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    require('toggleterm').setup {}

    vim.keymap.set('t', '<esc>', '<C-\\><C-n>', { silent = true })
    vim.keymap.set('n', '<leader>tk', '<cmd>ToggleTerm direction=float<CR>', { silent = true })
  end,
}
