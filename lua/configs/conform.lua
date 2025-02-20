local options = {
  formatters_by_ft = {
    html = { "prettier" },
    css = { "prettier" },
    c = { "clang-format" },
    lua = { "stylua" },
    javascript = { "prettier" },
    zig = { "zigfmt" },
    rust = { "rustfmt" },
    python = { "black" },
    swift = { "swift_format" },
    cs = { "csharpier" },
  },

  formatters = {
    clang_format = {
      prepend_args = { "--style=file", "--fallback-style=LLVM" },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },
}

return options
