local utils = require("core.utils")

return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local colors = require("catppuccin.palettes").get_palette()

        local bufferline = require("bufferline")

        bufferline.setup({})

        utils.setKeymap("n", "<C-l>", function()
            bufferline.cycle(1)
        end, { desc = "Bufferline: Next Buffer" })

        utils.setKeymap("n", "<C-h>", function()
            bufferline.cycle(-1)
        end, { desc = "Bufferline: Previous Buffer" })
    end
}
