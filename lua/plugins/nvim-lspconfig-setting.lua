return {
    'neovim/nvim-lspconfig',
     -- event = { "BufReadPost", "BufNewFile", },
    keys = {
      { "K", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "lsp hover", mode = "n", noremap = true, silent = true },
      { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "go to definition ", mode = "n", noremap = true, silent = true },
    },
    opts = {
    },
    config = function()
        require("lspconfig").clangd.setup({
          settings = {
            clangd = {
              fallbackFlags = { "-std=c++14" },
            }
          }
        })
        require("lspconfig").tsserver.setup({})
    end
}
