return {
  "sainnhe/everforest",
  enabled = false,
  lazy = false,
  priority = 1000,
  opts = {},

  config = function()

    vim.g.everforest_background = "hard" -- hard, medium, soft
    vim.g.everforest_better_performance = 1
    vim.g.everforest_transparent_background = 2 -- 1 background만 2 status line 같은 ui
    vim.g.everforest_dim_inactive_windows = 1 -- neovim option, 비활성화 흐리게
    vim.g.everforest_ui_contrast = "high" -- 
    vim.g.everforest_diagnostic_text_highlight = 1 -- lsp 강조

    vim.cmd.colorscheme("everforest")
  end
}
