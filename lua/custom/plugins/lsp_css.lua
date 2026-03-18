return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then vim.list_extend(opts.ensure_installed, { 'css', 'scss' }) end
    end,
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        cssls = {},
        tailwindcss = {},
      },
    },
  },
  -- Toon kleurcodes direct in je editor (zoals #ff0000)
  {
    'NvChad/nvim-colorizer.lua',
    opts = {
      user_default_options = {
        tailwind = true, -- Ondersteunt Tailwind classes!
      },
    },
  },
}
