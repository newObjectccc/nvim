local cmp = require("blink.cmp")

cmp.setup({
  sources = {
    { name = "lsp" },
    { name = "copilot" }, -- 将 copilot 放到第二个位置
    { name = "path" },
    { name = "buffer" },
    { name = "snippets" },
    { name = "luasnip" },
  },
  -- 其他配置...
})
