require'nvim-treesitter.configs'.setup {

  ensure_installed = { "c", "javascript", "rust", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  auto_install = true,

  ignore_install = { "javascript" },

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}

