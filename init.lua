-- initialize
require("initializer.vimrc-setup")
require("initializer.vim-keymap-setup")
require("initializer.vim-autocmd-setup")
require("initializer.lazy-nvim-setup")

require("lazy").setup({
  { import = "themes" },
  { import = "plugins" },
}, {
  change_detection = {
    enabled = false
  }
})
