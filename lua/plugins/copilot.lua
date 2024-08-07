return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      -- panel = {
      --   enabled = true,
      --   auto_refresh = true,
      --   keymap = {},
      --   layout = {
      --     position = "bottom", -- | top | left | right
      --     ratio = 0.4,
      --   },
      -- },
      -- suggestion = {
      --   enabled = true,
      --   auto_trigger = true,
      --   hide_during_completion = true,
      --   debounce = 75,
      --   keymap = {
      --     accept = "<Tab>",
      --     accept_word = false,
      --     accept_line = false,
      --     next = "<M-]>",
      --     prev = "<M-[>",
      --     dismiss = "<C-]>",
      --   },
      -- },
      filetypes = {
        ["*"] = true,
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
}
