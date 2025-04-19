return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    provider = "copilot",
    -- cursor_applying_provider = "copilot",
    copilot = {
      model = "gemini-2.5-pro", -- "claude-3.7-sonnet",
      -- model = "claude-3.7-sonnet", -- "claude-3.7-sonnet",
      max_tokens = 200000, -- 设置为最大值 200K tokens
    },
    auto_suggestions_provider = "copilot", -- Set the auto suggestions provider
    behaviour = {
      auto_suggestions = true, -- Enable auto suggestions
      -- enable_cursor_planning_mode = true, -- enable cursor planning mode!
      -- other behaviour settings
      --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
    },
    -- vendors = {
    --   --- ... existing vendors
    --   groq = { -- define groq provider
    --     __inherited_from = "copilot",
    --     api_key = "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",
    --     api_key_name = "GROQ_API_KEY",
    --     endpoint = "https://api.groq.com/openai/v1/",
    --     model = "llama-3.3-70b-versatile",
    --     max_completion_tokens = 200000, -- 32768, -- remember to increase this value, otherwise it will stop generating halfway
    --   },
    -- },
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
