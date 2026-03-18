return {
  {
    'tpope/vim-dadbod',
    dependencies = {
      'kristijanhusak/vim-dadbod-ui',
      'kristijanhusak/vim-dadbod-completion',
    },
    config = function()
      -- Optioneel: zet je DB UI instellingen hier
    end,
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = { sqls = {} },
    },
  },
}
