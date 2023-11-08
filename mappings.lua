local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

M.trouble = {
  plugin = true,
  n = {
    ["<leader>xx"] = {
      function() require("trouble").toggle() end,
      "Toggle trouble window"
    },
    ["<leader>xq"] = {
      function() require("trouble").toggle("quickfix") end,
      "Toggle trouble quickfix window"
    },
    ["<leader>xw"] = {
      function() require("trouble").toggle("workspace_diagnostics") end,
      "Toggle trouble workspace diagnostics window"
    },
    ["<leader>xd"] = {
      function() require("trouble").toggle("document_diagnostics") end,
      "Toggle trouble document diagnostics window"
    },
    ["<leader>xt"] = {
      "<cmd> TodoTrouble <CR>",
      "Todo trouble window"
    }
  }
}

M.symbols = {
  plugin = true,
  n = {
    ["<A-s>"] = {
      "<cmd> SymbolsOutline <CR>",
      "Toggle symbols"
    }
  }
}

return M
