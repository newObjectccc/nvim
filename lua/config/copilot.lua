require("copilot").setup({
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = false, -- not vim.g.ai_cmp,
      auto_trigger = true,
    },
    panel = { enabled = false },
  },
})
