return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then vim.list_extend(opts.ensure_installed, { 'rust', 'ron' }) end
    end,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    ft = { 'rust' },
    config = function()
      vim.g.rustaceanvim = {
        server = {
          settings = {
            ['rust-analyzer'] = {

              files = {
                watcher = 'server',
                exclude = {
                  '**/.git/**',
                  '**/target/**',
                  '**/node_modules/**',
                  '**/dist/**',
                  '**/out/**',
                },
              },
              cargo = {
                targetDir = 'target/ra',
                allTargets = true,
                features = 'all',
              },
              check = {
                command = 'check',
                allTargets = true,
              },
              showUnlinkedFileNotification = false,
            },
          },
        },
      }
    end,
  },
  {
    'saecki/crates.nvim',
    tag = 'stable',
    event = { 'BufRead Cargo.toml' },
    config = function() require('crates').setup {} end,
  },
}
