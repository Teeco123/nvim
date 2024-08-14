local options = {
  formatters_by_ft = {
    css = { "prettier" },
    html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 2500,
    lsp_format = "fallback",
  },
}

return options
