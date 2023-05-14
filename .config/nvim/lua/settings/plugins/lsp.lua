return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    config = function() require('settings.configs.lsp') end,
    dependencies = {
      { 'neovim/nvim-lspconfig' },
      {
        'williamboman/mason.nvim',
        build = function() pcall(vim.cmd, 'MasonUpdate') end,
      },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
      {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
          {
            "jose-elias-alvarez/null-ls.nvim",
            dependencies = {
              { 'nvim-lua/plenary.nvim' },
            },
            config = function() require('settings.configs.lsp') end,
          },
          "williamboman/mason.nvim",
        },
        config = function() require("settings.configs.lsp") end,
      }
    }
  },
}
