return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- Voor de icoontjes
    'MunifTanjim/nui.nvim',
  },
  keys = {
    -- Sneltoets om de explorer te openen/sluiten (vergelijkbaar met AstroNvim)
    { '<leader>e', '<cmd>Neotree toggle left<cr>', desc = 'Explorer NeoTree (Root Dir)' },
  },
  opts = {
    filesystem = {
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      filtered_items = {
        visible = true, -- Toon verborgen bestanden (zoals .env)
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    window = {
      width = 30,
      mappings = {
        ['<space>'] = 'none', -- Voorkom conflicten met leader key
      },
    },
  },
}
