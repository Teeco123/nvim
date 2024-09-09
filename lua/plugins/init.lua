return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    'IogaMaster/neocord',
    event = "VeryLazy"
  },

  {
    'rust-lang/rust.vim',
    event = "VeryLazy"
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "c_sharp",
        "svelte",
        "html",
        "css",
        "lua",
        "typescript",
        "javascript",
        "zig",
        "rust",
      },
    },
  },
}
