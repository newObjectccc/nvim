-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "javascript",
      "typescript",
      "tsx",
      "jsdoc",
      "vue",
      -- "javascriptreact",
      -- "typescriptreact",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
