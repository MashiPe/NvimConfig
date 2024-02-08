local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

-- Python lsp config
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})


-- Typescript/Javascript lsp config
lspconfig.tsserver.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"svelte,typescript"},
}


-- Svelte lsp config
lspconfig.svelte.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Tailwind lsp config
lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- eslint lsp config
lspconfig.eslint.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

-- r-languageserver lsp config
lspconfig.r_language_server.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  -- filetypes = {"r","rmd","R"},
}

lspconfig.gopls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd={"gopls"},
  filetypes = {"go","gomod","gowork","gotmpl"},
  root_dir = util.root_pattern("go.work","go.mod",".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

-- Docker and Dockercompose configurations
lspconfig.docker_compose_language_service.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.dockerls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
