local keymaps = vim.keymap
local lsp = require('lsp-zero').preset('recommended')

lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }

  keymaps.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  keymaps.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  keymaps.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  keymaps.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  keymaps.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  keymaps.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  keymaps.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  keymaps.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  keymaps.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  keymaps.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.ensure_installed({
  'tsserver',
  'lua_ls',
  'rust_analyzer',
})

lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['lua_ls'] = { 'lua' },
    ['rust_analyzer'] = { 'rust' },
  }
})

lsp.set_preferences({
  suggest_lsp_servers = false,
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})

lsp.nvim_workspace()

lsp.setup()

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ["<C-Space>"] = cmp.mapping.complete(),
    ['<Tab>'] = nil,
    ['<S-Tab>'] = nil
  },
})

local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.eslint,
  }
})

require('mason-null-ls').setup({
  ensure_installed = nil,
  automatic_installation = true,
})

vim.diagnostic.config({ virtual_text = true })