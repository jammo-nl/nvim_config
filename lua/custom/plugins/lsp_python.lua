return {
  -- 1. Treesitter voor Python
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then vim.list_extend(opts.ensure_installed, { 'python', 'ninja', 'rst' }) end
    end,
  },

  -- 2. LSP Setup
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = 'workspace',
              },
            },
          },
        },
      },
    },
  },

  -- 3. Venv Select (Handig voor project-specifieke libraries)
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    opts = {
      name = { 'venv', '.venv', 'env', '.env' },
      auto_refresh = false,
    },
    keys = {
      -- Sneltoets om je virtual env te kiezen
      { '<leader>cv', '<cmd>VenvSelect<cr>', desc = 'Select VirtualEnv' },
    },
  },
}
