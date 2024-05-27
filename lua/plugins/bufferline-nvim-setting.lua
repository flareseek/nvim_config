return {
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    event = 'VeryLazy',
    config = function()
        vim.api.nvim_set_keymap('n', '<leader>q', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>w', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader><leader>t', ':BufferLinePick', { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>c", ":bdelete<cr>", { silent = true, noremap = true })
            local bufferline = require("bufferline")

        bufferline.setup({
            options = {
                mode = "buffers",
                numbers = "ordinal",
                indicator = {
                    icon = '▎',
                    style = 'underline'
                },
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                    local sym = e == "error" and " "
                        or (e == "warning" and " " or "" )
                    s = s .. n .. sym
                    end
                    return s
                end,
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "left",
                        highlight = "Directory",
                        separator = true,
                    }
                },
                

            }
        })
    end
}
