local nvim_lsp = require("lspconfig")

return {
  setup = function(opts)
    nvim_lsp.vtsls.setup({
      root_dir = nvim_lsp.util.root_pattern("package.json"),
      single_file_support = false,
    })
  end,
}
