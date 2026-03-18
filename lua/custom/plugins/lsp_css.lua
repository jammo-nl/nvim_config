return {
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
        tailwind = true,         -- Ondersteunt Tailwind classes!
      },
    },
  },
}
