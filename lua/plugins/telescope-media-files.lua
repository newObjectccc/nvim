-- this feature is dependent on the terminal runtime, such as kitty,wezterm,iterm2
-- and now, all of these terminal has not supported this feature
return {
  "nvim-telescope/telescope-media-files.nvim",
  opts = function()
    require("telescope").load_extension("media_files")
    require("telescope").setup({
      extensions = {
        media_files = {
          filetypes = { "png", "webp", "jpg", "jpeg" },
          find_cmd = "rg",
        },
      },
    })
    vim.api.nvim_set_keymap("n", "<leader>fm", ":Telescope media_files<CR>", { noremap = true, silent = true })
  end,
}
