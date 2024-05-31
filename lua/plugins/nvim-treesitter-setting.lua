return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  opts = {
    ensure_installed = { "c", "cpp", "vim", "lua", "python",
      "javascript", "jsdoc", "json", "typescript" 
    },
    auto_install = true,
    highlight = { 
      enable = true, 
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
  }
}
