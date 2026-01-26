return {
  {
    "stevearc/conform.nvim",
    keys = {
      {
        "<leader>cf",
        function()
          require("conform").format()
        end,
        desc = "Format buffer (conform)",
      },
    },
  },
}

