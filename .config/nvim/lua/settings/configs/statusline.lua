local theme = require 'lualine.themes.codedark'

theme.normal.c.bg = 'None'

require('lualine').setup {
  options = {
    theme = theme,
    sections = {
      lualine_b = {
        'branch', 'diff',
        {
          'diagnostics',
          sources = { 'nvim_diagnostic', 'nvim_lsp' },
          sections = { 'error', 'warn', 'info', 'hint' },
          diagnostics_color = {
            error = 'DiagnosticError',
            warn  = 'DiagnosticWarn',
            info  = 'DiagnosticInfo',
            hint  = 'DiagnosticHint',
          },
          symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H' },
          colored = true,
          update_in_insert = true,
          always_visible = false,
        }
      },
    },
  },
}
