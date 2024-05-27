return {
    'neovim/nvim-lspconfig',
     -- event = { "BufReadPost", "BufNewFile", },
    config = function()
        vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

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
