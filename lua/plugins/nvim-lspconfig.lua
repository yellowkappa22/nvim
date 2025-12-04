return {
   "neovim/nvim-lspconfig",
   config = function()
      require("lspconfig")
      vim.lsp.config("ruff", {
         on_attach = function(client, _)
            client.server_capabilities.hoverProvider = false
         end,
         filetypes = { "python", "ipynb", "json"},
      })

      vim.lsp.config("pyright", {
         settings = {
            pyright = {
               disableOrganizeImports = true,
            },
         },
         filetypes = { "python", "ipynb", "json" },
      })

      vim.lsp.config("clangd", {
         cmd = { "clangd", "--clang-tidy" } 
      })

      vim.lsp.enable({ "pyright", "ruff", "clangd" })
   end,
}
