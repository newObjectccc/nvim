require("blink.cmp").setup({
  "saghen/blink.cmp",
  opts = {
    completion = {
      trigger = {
        prefetch_on_insert = true, -- 确保在进入插入模式时预取补全项
        show_on_insert_on_trigger_character = true, -- 确保在输入触发字符时显示补全窗口
        show_on_keyword = true, -- 确保在输入关键字时显示补全窗口
        show_on_trigger_character = true, -- 确保在输入触发字符时显示补全窗口
        show_on_accept_on_trigger_character = true,
        show_on_blocked_trigger_characters = { " ", "\n", "\t" },
        show_on_x_blocked_trigger_characters = { "'", '"', "(" },
      },
      ghost_text = { enabled = true },
    },
  },
})
