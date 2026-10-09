return {
    {
        "folke/tokyonight.nvim",
        config = function()
            local tokyo = require("tokyonight")
            tokyo.setup({
                transparent = true,
                style = "night",
                on_highlights = function(hl, c)
                    -- set telescope-bg transparent
                    hl.TelescopeNormal = {
                        fg = c.fg_dark,
                    }
                    hl.TelescopeBorder = {
                        fg = c.bg_dark,
                    }
                end,
            })
            vim.cmd.colorschem "tokyonight"
        end
    },
}
