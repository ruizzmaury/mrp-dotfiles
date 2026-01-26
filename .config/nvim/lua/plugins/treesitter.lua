return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "html",
      "css",

      -- frontend
      "javascript",
      "typescript",
      "tsx",
      "json",

      -- backend
      "rust",
      "go",
      "zig",
      "lua",
    },
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  },
}
