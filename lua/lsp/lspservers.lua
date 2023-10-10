  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  local lspconfig = require("lspconfig")
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  lspconfig['pyright'].setup {
    capabilities = capabilities
  }
  lspconfig['tsserver'].setup {
    capabilities = capabilities,
    filetypes =  {
      "typescriptreact",
      "javascriptreact",
      "javascript",
      "typescript"
    }
  }
  lspconfig['rust_analyzer'].setup {
    capabilities = capabilities
  }
  lspconfig['lua_ls'].setup {
    capabilities = capabilities
  }
  lspconfig['cssls'].setup {
    capabilities = capabilities
  }
  lspconfig['html'].setup {
    capabilities = capabilities
  }
  lspconfig['sqlls'].setup {
    capabilities = capabilities
  }
  lspconfig.emmet_ls.setup {
    capabilities = capabilities,
    filetypes =  {
      "typescriptreact",
      "javascriptreact",
      "javascript",
      "typescript"
    }
  }
