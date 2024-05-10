return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { 
          "lua_ls", "bashls", "csharp_ls", "clangd",
          "cmake", "cssls", "cssmodules_ls", "dockerls", 
          "gopls", "jsonls", 
          "biome", "marksman", "intelephense", "powershell_es", "sqls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
    end
  }
}
