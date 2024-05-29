return {
  'saecki/crates.nvim',
  tag = 'stable',
  config = function()
    require('crates').setup()
    local crates = require("crates")

    vim.keymap.set("n", "<leader>cv", crates.show_versions_popup, { silent = true })
    vim.keymap.set("n", "<leader>cf", crates.show_features_popup, { silent = true })
    vim.keymap.set("n", "<leader>cu", crates.upgrade_crate, { silent = true })
  end,
}
