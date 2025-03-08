-- lua/plugins/lsp.lua
return {
  -- 1) Mason: manages external tools (LSP servers, linters, etc.)
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- recommended; updates the registry of servers
    config = function()
      require("mason").setup()
    end,
  },

  -- 2) mason-lspconfig: bridges mason.nvim with lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "javascript", "typescript", "c", "help", "lua" }, -- list of servers you want to auto-install
      })
    end,
  },

  -- 3) nvim-lspconfig: basic LSP client config
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Example: Pyright
      require("lspconfig").pyright.setup({
        -- Additional server-specific settings go here.
        -- For example, you can define custom on_attach or capabilities
      })
    end,
  },
}
