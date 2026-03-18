return {
  'stevearc/aerial.nvim',
  opts = {},
  -- Optionele afhankelijkheden voor iconen
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    -- Sneltoets om de outline rechts te openen/sluiten
    { '<leader>o', '<cmd>AerialToggle! right<cr>', desc = 'Symbols Outline (Aerial)' },
  },
  config = function(_, opts) require('aerial').setup(opts) end,
}
