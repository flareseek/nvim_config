return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
        vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<cr>", { silent = true, noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>f", ":NvimTreeFocus<cr>", { silent = true, noremap = true })
        --vim.api.nvim_set_keymap("n", "<leader>c", ":NvimTreeFindFile<cr>", { silent = true, noremap = true })
    --
        require("nvim-tree").setup({
            disable_netrw = true,
            filters = {
              git_ignored = false,
            },
        })

        vim.g.nvim_tree_respect_buf_cwd = 1

        local function open_nvim_tree(data)
        local directory = vim.fn.isdirectory(data.file) == 1
        if not directory then
            vim.cmd.cd(vim.fn.expand('%:p:h'))
        else
            vim.cmd.cd(data.file)
        end
        -- open the tree
        require("nvim-tree.api").tree.toggle({ focus = false })
        end

        vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
    end,
  }


