return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = "main",
    build = ':TSUpdate',
    config = function()
        require("nvim-treesitter").install({
            "lua", "go", "c"
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = {"lua", "go", "c"},
            callback = function()
                vim.treesitter.start()
            end,
        })
    end
}
