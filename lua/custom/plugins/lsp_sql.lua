return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then vim.list_extend(opts.ensure_installed, { 'sql' }) end
    end,
  },
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
