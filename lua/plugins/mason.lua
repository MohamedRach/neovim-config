return {
    {
      "williamboman/mason.nvim",
      config = function ()
        require("mason").setup()
      end
    },
    {
    "williamboman/mason-lspconfig.nvim",
    config = function ()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "dockerls", "docker_compose_language_service", "gopls", "html", "tsserver", "jdtls", "zk", "pylsp"}

      })
    end

  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      lspconfig.lua_ls.setup({
          capabilities = capabilities
      })
      lspconfig.gopls.setup({
          capabilities = capabilities
      })
      lspconfig.tsserver.setup({
          capabilities = capabilities

      })
      lspconfig.pylsp.setup({
          capabilities = capabilities

      })
      lspconfig.jdtls.setup({
          capabilities = capabilities

      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },

}
