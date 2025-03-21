return {
  {
    'folke/todo-comments.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    dependencies = { 'nvim-lua/plenary.nvim' },
    priority = 1000,
    event = 'VimEnter',
    opts = {
      signs = true,
      keywords = {
        FIX = {
          color = 'error',
          alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' },
        },
        TODO = { color = 'info', alt = { 'ToDo', 'Todo', 'todo' } },
        HACK = { color = 'warning' },
        WARN = {
          color = 'warning',
          alt = { 'WARNING', 'Warning', 'warning', 'XXX' },
        },
        PERF = { alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
        NOTE = { color = 'hint', alt = { 'INFO', 'info', 'Info' } },
        TEST = {
          color = 'test',
          alt = { 'TESTING', 'PASSED', 'FAILED' },
        },
      },
      gui_style = {
        fg = 'NONE',
        bg = 'BOLD',
      },
      merge_keywords = true,
      highlight = {
        multiline = true,
        before = 'fg',
        keyword = 'bg',
        after = 'fg',
      },
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        info = { "DiagnosticInfo", "#2563EB" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" }
      },
    },
  },
}
