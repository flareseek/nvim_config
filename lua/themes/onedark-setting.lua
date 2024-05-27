return {
  'navarasu/onedark.nvim',
  enabled = true,
  lazy = false,
  priority = 1000,

  config = function()
    require('onedark').setup({
      style = 'warm',
      transparent = false,
      term_colors = true,

      toggle_style_key = '<leader><leader>r',
      toggle_style_list = { 'darker', 'deep', 'warm', 'warmer', 'light' },

      code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'underline',
        strings = 'bold',
        variables = 'none'
      },

      diagnostics = {
        darker = true,
        undercurl = true,
        background = true
      }
    })
    require('onedark').load()
  end
}
