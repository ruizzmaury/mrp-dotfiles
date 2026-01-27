return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.default_format_opts = opts.default_format_opts or {}
    opts.default_format_opts.lsp_format = "never"

    opts.formatters_by_ft = opts.formatters_by_ft or {}

    -- Backend
    opts.formatters_by_ft.rust = { "rustfmt" }
    opts.formatters_by_ft.go = { "gofmt" }

    -- Frontend / React
    opts.formatters_by_ft.javascript = { "prettier" }
    opts.formatters_by_ft.javascriptreact = { "prettier" }
    opts.formatters_by_ft.typescript = { "prettier" }
    opts.formatters_by_ft.typescriptreact = { "prettier" }
    opts.formatters_by_ft.html = { "prettier" }
    opts.formatters_by_ft.css = { "prettier" }

    return opts
  end,
}
