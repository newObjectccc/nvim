return {
  setup = function()
    require("lspconfig").volar.setup({
      cmd = { "vue-language-server", "--stdio" },
      filetypes = { "vue" },
      init_options = {
        vue = {
          hybridMode = true,
        },
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
      },
      on_new_config = function()
        -- uses nvim-lspconfig/lua/lspconfig/server_configurations/volar.lua:62
      end,
    })
  end,
}
