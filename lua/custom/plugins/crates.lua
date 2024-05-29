return {
  'saecki/crates.nvim',
  tag = 'stable',
  config = function()
    require('crates').setup()
    local crates = require("crates")

    vim.keymap.set("n", "<leader>cu", crates.update_crate, { silent = true })
  end,
}
