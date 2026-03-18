return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        ts_ls = {         -- Voorheen tsserver
          init_options = {
            plugins = {
              {
                name = '@vue/typescript-plugin',
                location = '',                 -- Mason installeert dit automatisch
                languages = { 'vue' },
              },
            },
          },
          filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
        },
        volar = {},         -- Vue LSP
      },
    },
  },
}
