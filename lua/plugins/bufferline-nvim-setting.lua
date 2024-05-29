return {
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    keys = {
      { "<leader>q", "<cmd>BufferLineCyclePrev<CR>", desc = "BufferPrev", mode = "n", noremap = true, silent = true },
      { "<leader>w", "<cmd>BufferLineCycleNext<CR>", desc = "BufferNext", mode = "n", noremap = true, silent = true },
      { "<leader><leader>t", "<cmd>BufferLinePick<CR>", desc = "BufferPick", mode = "n", noremap = true, silent = true },
    },
    event = 'VeryLazy',
    config = function()
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
