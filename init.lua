require("initializer.vimrc-setup")
require("initializer.vim-keymap-setup")
require("initializer.vim-autocmd-setup")
require("initializer.lazy-nvim-setup")

require("lazy").setup({
  -- theme
  require("themes.tokyonight-setting"),
  require("themes.github-nvim-theme-setting"),
  --

  require("plugins.nvim-tree-setting"),
  require("plugins.nvim-treesitter-setting"),
  require("plugins.nvim-autopairs-setting"),
  require("plugins.telescope-setting"),
  require("plugins.indent-blankline-setting"),
  require("plugins.bufferline-nvim-setting"),
  require("plugins.nvim-lspconfig-setting"),
  require("plugins.nvim-cmp-setting"),
  require("plugins.vim-illuminate-setting"),
  require("plugins.lualine-setting"),
  require("plugins.todo-comments-setting"),
  require("plugins.trouble-nvim-setting"),
  require("plugins.vim-sleuth-setting"),

  require("themes.onedark-setting"),
})
