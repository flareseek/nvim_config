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
                numbers = "none",
                max_name_length = 17,
                tab_size = 15,
                indicator = {
                    icon = '▎',
                    style = 'icon'
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
                groups = {
                    options = {
                        toggle_hidden_on_enter = false,
                    },
                    items = {
                        {
                            name = "H",
                            highlight = { underline = true, sp = "#FF55FF"},
                            matcher = function(buf) -- Mandatory
                                return buf.name:match("%.h") or buf.name:match("%.hpp")
                            end,
                        },
                        {
                            name = "S",
                            highlight = { underline = true, sp = "#5555FF"},
                            matcher = function(buf)
                                return buf.name:match("%.cpp") or buf.name:match("%.c")
                            end

                        },
                        require("bufferline.groups").builtin.ungrouped,
                    }
                },
            }
        })
    end
}
