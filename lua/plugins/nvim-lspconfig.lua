return {
  "neovim/nvim-lspconfig",
  -- dependencies = {
  --   "jose-elias-alvarez/typescript.nvim",
  --   init = function()
  --     require("lazyvim.util").lsp.on_attach(function(_, buffer)
  --         -- stylua: ignore
  --         vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
  --       vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
  --     end)
  --   end,
  -- },
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- tsserver will be automatically installed with mason and loaded with lspconfig
      -- vtsls = {},
      -- tsserver = {},
    },
    -- you can do any additional lsp server setup here
    -- return true if you don't want this server to be setup with lspconfig
    ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
    setup = {
      -- -- example to setup with typescript.nvim
      -- tsserver = function(_, opts)
      --   require("config.typescript").setup({ server = opts })
      --   return true
      -- end,

      -- vtsls = function(_, opts)
      --   require("config.vtsls").setup({ server = opts })
      --   return true
      -- end,

      -- somesass_ls = function(_, opts)
      --   require("config.somesass_ls").setup({ server = opts })
      --   return true
      -- end,

      -- Specify * to use this function as a fallback for any server
      -- ["*"] = function(server, opts)
      --   require("config." .. server).setup({ server = opts })
      --   return true
      -- end,
    },
  },
}
