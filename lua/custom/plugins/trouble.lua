return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {}, -- Standaard instellingen zijn prima
  keys = {
    -- Sneltoetsen om door fouten te navigeren
    { '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Diagnostics (Trouble)' },
    { '<leader>xd', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = 'Buffer Diagnostics (Trouble)' },
    { '[q', function() require('trouble').previous { skip_groups = true, jump = true } end, desc = 'Vorige fout' },
    { ']q', function() require('trouble').next { skip_groups = true, jump = true } end, desc = 'Volgende fout' },
  },
}
