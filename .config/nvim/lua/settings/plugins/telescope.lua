return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'debugloop/telescope-undo.nvim',
  },
  config = function() require("telescope").load_extension("undo") end,
  keys = {
    { '<leader>pf', function() require('telescope.builtin').find_files() end },
    { '<leader>ps', function() require('telescope.builtin').grep_string({ search = vim.fn.input('Grep > ') }) end },
    { '<C-p>',      function() require('telescope.builtin').git_files() end },
    { '<leader>u',  '<cmd>Telescope undo<cr>' },
  },
}
