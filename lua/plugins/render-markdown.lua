return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim', 'nvim-tree/nvim-web-devicons'},
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
   },
    config = function(_, opts)
      require('nvim-web-devicons').setup()
      require('render-markdown').setup(opts)
    end,
}
