return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false, 
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "vim", "vimdoc", "markdown", "markdown_inline" },
            sync_install = true,
            auto_install = true,
            highlight = {
                enable = true
            }
        })
    end
}
