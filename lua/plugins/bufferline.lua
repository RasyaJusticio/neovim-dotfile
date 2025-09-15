local utils = require("core.utils")

return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local colors = require("catppuccin.palettes").get_palette()

        local bufferline = require("bufferline")

        bufferline.setup({})

        utils.setKeymap("n", "<A-l>", function()
            bufferline.cycle(1)
        end, { desc = "Bufferline: Next Buffer" })

        utils.setKeymap("n", "<A-h>", function()
            bufferline.cycle(-1)
        end, { desc = "Bufferline: Previous Buffer" })

        utils.setKeymap("n", "<A-w>", function()
            vim.api.nvim_buf_delete(0, { force = false })
        end, { desc = "Bufferline: Close Current Buffer" })
    end
}
