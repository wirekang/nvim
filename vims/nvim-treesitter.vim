lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    additional_vim_regex_highlighting = true 
  },
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "Ss",
      node_incremental = "ni",
      scope_incremental ="si",
      node_decremental = "nd",
    }
  },
  autotag = {
    enable = true,
  }
}
EOF
