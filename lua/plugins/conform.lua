return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        python = { "ruff_format" },
        cpp = { "clang_format" },
        lua = { "stylua" },
      },
    })
  end,
}
