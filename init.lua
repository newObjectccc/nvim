-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- require("avante_lib").load()
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
  -- per_filetype = {
  --   ["html"] = {
  --     enable_close = false,
  --   },
  -- },
})

-- if neovide
if vim.g.neovide then
  -- vim.o.guifont = "JetBrainsMonoNL Nerd Font Propo:h11" -- text below applies for VimScript
  vim.o.guifont = "Maple Mono NF CN:h14" -- text below applies for VimScript
  vim.g.neovide_opacity = 0.7
  -- vim.g.neovide_window_blurred = true
  -- vim.g.neovide_fullscreen = true
  vim.g.neovide_theme = "auto"
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
  -- Ctrl + Shift + v to paste from system clipboard
  vim.keymap.set("i", "<C-S-v>", "<C-R>*")
  vim.keymap.set("n", "<C-S-v>", '"+p', { noremap = true })
  vim.keymap.set("v", "<C-S-v>", '"+p', { noremap = true })
  -- Add terminal mode mapping for fzf-lua and other terminal contexts
  vim.keymap.set("t", "<C-S-v>", '<C-\\><C-N>"+pa', { noremap = true })
  -- Add command mode mapping
  vim.keymap.set("c", "<C-S-v>", "<C-R>+", { noremap = true })
  --
  -- -- Super (Windows/Command) + c to copy to system clipboard
  -- vim.keymap.set("n", "<D-c>", '"+y', { noremap = true })
  -- vim.keymap.set("v", "<D-c>", '"+y', { noremap = true })
  --
  -- -- Super (Windows/Command) + v to paste from system clipboard
  -- vim.keymap.set("n", "<D-v>", '"+p', { noremap = true })
  -- vim.keymap.set("v", "<D-v>", '"+p', { noremap = true })
  -- vim.keymap.set("i", "<D-v>", "<C-R>+", { noremap = true })
  -- vim.keymap.set("t", "<D-v>", '<C-\\><C-N>"+pa', { noremap = true })
  -- vim.keymap.set("c", "<D-v>", "<C-R>+", { noremap = true })
end
