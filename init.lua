-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("nvim-ts-autotag").setup({
  opts = {
    -- Defaults
    enable_close = true, -- Auto close tags
    enable_rename = true, -- Auto rename pairs of tags
    enable_close_on_slash = false, -- Auto close on trailing </
  },
  -- Also override individual filetype configs, these take priority.
  -- Empty by default, useful if one of the "opts" global settings
  -- doesn't work well in a specific filetype
  per_filetype = {
    ["html"] = {
      enable_close = false,
    },
  },
})

-- if neovide
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h11" -- text below applies for VimScript
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
end
