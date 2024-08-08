return {
  setup = function(opts)
    require("lspconfig").vtsls.setup({
      filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "vue",
      },
      autoUseWorkspaceTsdk = true,
    })
  end,
}
