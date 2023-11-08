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
    }
  }
}

M.todo = {
  plugin = true,
  n = {
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
