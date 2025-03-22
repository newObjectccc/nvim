return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    provider = "copilot",
    copilot = {
      model = "claude-3.7-sonnet", -- "claude-3.7-sonnet",
      max_token = 200000, -- 设置为最大值 200K tokens
    },
    auto_suggestions_provider = "copilot", -- Set the auto suggestions provider
    behaviour = {
      auto_suggestions = true, -- Enable auto suggestions
      -- other behaviour settings
    },
    history = {
      max_tokens = 200000, -- Set the maximum number of tokens
      -- other history settings
    },
    mappings = {
      suggestion = {
        accept = "<Tab>", -- Key mapping to accept suggestion
        next = "<M-]>", -- Key mapping to go to the next suggestion
        prev = "<M-[>", -- Key mapping to go to the next suggestion
        dismiss = "<C-c>", -- Key mapping to go to the next suggestion
        -- other key mappings
      },
      -- other mappings
    },
    -- add any opts here
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    -- "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua",
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          -- use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
