return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        -- languages to install (you can add/remove)
        ensure_installed = { "lua", "python", "javascript", "html", "css", "vim", "bash" },

        -- auto install missing parsers when entering buffer
        auto_install = true,

        highlight = {
          enable = true,              -- enable syntax highlighting
          additional_vim_regex_highlighting = false,
        },

        indent = { enable = true },   -- enable better indentation
      })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "json", "ipynb", "molten" },
        callback = function()
          -- optionally force treesitter to use python parser for code blocks
          vim.bo.filetype = "python"
        end,
      })
    end,
  },
}
