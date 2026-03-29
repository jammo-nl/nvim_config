return {
  'olimorris/codecompanion.nvim',
  lazy = true, -- plugin wordt alleen geladen wanneer nodig
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  keys = {
    { '<Leader>pt', '<cmd>CodeCompanionChat Toggle<cr>', desc = 'Toggle AI Chat' },
    { '<Leader>pa', '<cmd>CodeCompanionActions<cr>', desc = 'AI Actions' },
  },
  opts = {
    strategies = {
      chat = { adapter = 'xai' },
      inline = { adapter = 'xai' },
    },
    adapters = {
      http = {
        xai = function()
          return require('codecompanion.adapters').extend('xai', {
            name = 'xai',
            url = 'https://api.x.ai/v1/chat/completions',
            env = { api_key = 'XAI_API_KEY' }, -- environment variable moet bestaan
            schema = { model = { default = 'grok-code-fast-1' } },
            opts = { model = 'grok-code-fast-1' },
            supports_tools = true,
          })
        end,
      },
    },
    opts = { log_level = 'DEBUG' },
  },
}
