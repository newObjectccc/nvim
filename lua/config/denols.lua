local nvim_lsp = require("lspconfig")

return {
  setup = function(opts)
    nvim_lsp.denols.setup({
      root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
    })
  end,
}
