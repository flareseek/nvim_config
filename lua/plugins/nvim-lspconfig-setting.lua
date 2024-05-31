return {
    'neovim/nvim-lspconfig',
     -- event = { "BufReadPost", "BufNewFile", },
    keys = {
      { "K", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "lsp hover", mode = "n", noremap = true, silent = true },
      { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "go to definition", mode = "n", noremap = true, silent = true },
      { "gr", "<cmd>lua vim.lsp.buf.references()<CR>", desc = "show refernces", mode = "n", noremap = true, silent = true },
      { "gR", "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "rename variable or function name", mode = "n", noremap = true, silent = true },
      --{ "gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>", desc = "go to definition ", mode = "n", noremap = true, silent = true },
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
        require("lspconfig").pyright.setup({})
    end
}
