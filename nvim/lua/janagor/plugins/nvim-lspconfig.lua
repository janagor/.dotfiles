return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim',           opts = {} },
      { 'williamboman/mason-lspconfig.nvim', opts = {} },
    },
    config = function()

      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {
          -- 'lua_ls',
          -- 'pyright',
          -- 'rust_analyzer',
          'clangd',
          'cmake',
        },
      })

      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup({})
      lspconfig.ruff.setup({})
      lspconfig.cmake.setup({})
      -- lspconfig.black.setup({})
      lspconfig.clangd.setup({})
      lspconfig.rust_analyzer.setup({})
    end,
  },

  -- Optional: Autocompletion with nvim-cmp
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
    },
    config = function()
      -- nvim-cmp setup
      local cmp = require('cmp')

      cmp.setup({
        sources = {
          { name = 'nvim_lsp' },
        },
      })
    end,
  },
}
