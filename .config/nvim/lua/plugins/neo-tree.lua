return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  keys = {
    { "<C-n>", "<cmd>Neotree filesystem reveal left<CR>", desc = "NeoTree" },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,        -- show filtered items
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {},
        never_show = {},
      },
    },
  },
}
