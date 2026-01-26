return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.default_format_opts = opts.default_format_opts or {}
    opts.default_format_opts.lsp_format = "never"

    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.rust = { "rustfmt" }
    opts.formatters_by_ft.go = { "gofmt" }

    return opts
  end,
}

