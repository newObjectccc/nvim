return {
  "3rd/image.nvim",
  cond = not vim.g.neovide, -- 只在非 Neovide 环境中加载
  opts = {
    backend = "kitty",
    integrations = {
      markdown = {
        enabled = true,
        clear_in_insert_mode = false,
        download_remote_images = true,
        only_render_image_at_cursor = false,
        filetypes = { "markdown", "vimwiki" },
      },
    },
    max_width = nil,
    max_height = nil,
    max_width_window_percentage = nil,
    max_height_window_percentage = 50,
    window_overlap_clear_enabled = false,
    window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    rocks = {
      -- hererocks = true, -- 如果您没有全局安装 Lua 5.1，建议启用
    },
  },
}

-- return {
--   "3rd/image.nvim",
--   ft = { "markdown", "vimwiki" }, -- 可以根据需要添加更多文件类型
--   opts = {
--     backend = "kitty", -- 如果在Neovide中，将自动切换到正确的后端
--     integrations = {
--       markdown = {
--         enabled = true,
--         clear_in_insert_mode = false,
--         download_remote_images = true,
--         only_render_image_at_cursor = false,
--         filetypes = { "markdown", "vimwiki" }, -- 设置应该渲染的文件类型
--       },
--       neorg = {
--         enabled = true,
--         clear_in_insert_mode = false,
--         download_remote_images = true,
--         only_render_image_at_cursor = false,
--         filetypes = { "norg" },
--       },
--     },
--     max_width = nil,
--     max_height = nil,
--     max_width_window_percentage = nil,
--     max_height_window_percentage = 50,
--     window_overlap_clear_enabled = false, -- 处理窗口重叠
--     window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
--   },
-- }
