local M = {}

M.abc ={
  n = {
    -- ["<leader>rdev"] = {":T npm run dev<CR>"}
    ["gr"] = {
      function()
        require('telescope.builtin').lsp_references()
      end,
      "LSP telescope references",
    },
    ["<C-d>"] = { "<C-d>zz", "Custom Page Down" },
    ["<C-u>"] = { "<C-u>zz", "Custom Page Up" },
  }
}

M.cmp ={
  plugin= true,
  n = {
    ["<C-Space>"] = {
      function()
        require('cmp').mapping.complete()
      end
    }
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>tbp"] = {"<cmd> DapToggleBreakpoint <CR>"},
    ["<leader>dr"] = {"<cmd> DapContinue <CR>"},
    ['<F10>']= {function ()
      require('dap').step_over()
      vim.cmd('execute \"normal zz\"')
    end},
    ['<F11>']= {function ()
      require('dap').step_into()
      vim.cmd('execute \"normal zz\"')
    end},
    ['<F12>']= {function ()
      require('dap').step_out()
      vim.cmd('execute \"normal zz\"')
    end},
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<F5>"] = {
      function()
        require('dap').continue()
      end
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<F5>"] = {
      function()
        require('dap').continue()
      end
    }
  }
}

return M
