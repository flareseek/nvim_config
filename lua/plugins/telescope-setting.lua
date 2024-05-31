return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 
        'nvim-lua/plenary.nvim' 
    },
    opts = {},
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>e", builtin.find_files, { desc = "Find Files"})
        vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Live Grep"})
        vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Buffer Serch"})
        -- vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
    end
}
