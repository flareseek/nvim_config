return { 
    "lukas-reineke/indent-blankline.nvim", 
    main = "ibl", 
    opts = {},

    config = function()
        local highlight = { "Blue" }
        local hooks = require("ibl.hooks")
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function() 
            vim.api.nvim_set_hl(0, "Blue", { fg = "#61AFEF" }) 
            end
        )

        require("ibl").setup({
            indent = { char = '╎', },
            scope = {
                enabled = true,
                highlight = "Blue",
            }
        })
    end
}
