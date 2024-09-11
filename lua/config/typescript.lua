local mason_registry = require("mason.registry")
local vue_language_server_plugin = mason_registry.get_package("vue-language-server"):get_installed_path()
  .. "/node_modules/@vue/language-server"
return {
  -- setup = function(opts)
  --   require("lspconfig").tsserver.setup({
  --     cmd = { "typescript-language-server", "--stdio" },
  --     filetypes = {
  --       "javascript",
  --       "javascriptreact",
  --       "javascript.jsx",
  --       "typescript",
  --       "typescriptreact",
  --       "typescript.tsx",
  --       "vue",
  --     },
  --     init_options = {
  --       plugins = {
  --         {
  --           name = "@vue/typescript-plugin",
  --           location = vue_language_server_plugin,
  --           languages = { "vue" },
  --         },
  --       },
  --     },
  --   })
  -- end,
}
