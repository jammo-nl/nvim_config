return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function() vim.cmd.colorscheme 'tokyonight-night' end,
  },
  {
    'nvim-lualine/lualine.nvim', -- AstroNvim heeft dit standaard, Kickstart niet
    opts = {
      options = { theme = 'tokyonight', section_separators = '', component_separators = '|' },
      sections = {
        lualine_c = {
          { 'diagnostics', sources = { 'nvim_diagnostic' } }, -- Toont [x] fouten [!] waarschuwingen
          'filename',
        },
      },
    },
  },
}
