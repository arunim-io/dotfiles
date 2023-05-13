return {
  {
    "folke/todo-comments.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = true,
    keys = {
      { '<leader>pt', '<Cmd>:TodoLocList<CR>' }
    },
  }
}
