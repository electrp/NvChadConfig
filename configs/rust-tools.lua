local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities


local options = {
  server = {
    on_attach = function(client, bufnr)
      vim.api.nvim_set_hl(0, "@variable.rust", { link = "Identifier" })
      on_attach(client, bufnr)
    end,  
    capabilities = capabilities,
  }
}

return options
