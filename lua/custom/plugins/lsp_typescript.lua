return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then vim.list_extend(opts.ensure_installed, { 'typescript', 'javascript', 'vue', 'tsx' }) end
    end,
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        ts_ls = { -- Voorheen tsserver
          init_options = {
            plugins = {
              {
                name = '@vue/typescript-plugin',
                location = '', -- Mason installeert dit automatisch
                languages = { 'vue' },
              },
            },
          },
          filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
        },
        volar = {}, -- Vue LSP
      },
    },
  },
}
