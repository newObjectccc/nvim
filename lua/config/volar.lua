return {
  setup = function(opts)
    require("lspconfig").volar.setup({
      cmd = { "vue-language-server", "--stdio" },
      filetypes = { "vue" },
      init_options = {
        documentFeatures = {
          documentColor = false,
          documentFormatting = {
            defaultPrintWidth = 100,
          },
          documentSymbol = true,
          foldingRange = true,
          linkedEditingRange = true,
          selectionRange = true,
        },
        languageFeatures = {
          callHierarchy = true,
          codeAction = true,
          codeLens = true,
          completion = {
            defaultAttrNameCase = "kebabCase",
            defaultTagNameCase = "both",
          },
          definition = true,
          diagnostics = true,
          documentHighlight = true,
          documentLink = true,
          hover = true,
          implementation = true,
          references = true,
          rename = true,
          renameFileRefactoring = true,
          schemaRequestService = true,
          semanticTokens = false,
          signatureHelp = true,
          typeDefinition = true,
        },
        typescript = {
          serverPath = "",
        },
      },
      on_new_config = function()
        -- uses nvim-lspconfig/lua/lspconfig/server_configurations/volar.lua:62
      end,
      root_dir = function()
        -- uses nvim-lspconfig/lua/lspconfig/util.lua:343
      end,
    })
  end,
}
