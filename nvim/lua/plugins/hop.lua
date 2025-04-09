return {
    "smoka7/hop.nvim",
    main = "hop",
    opts = {
        -- This is actually equal to:
        --   require("hop.hint").HintPosition.END
        config = function()
            require("hop").setup({
                hint_position = require("hop.hint").HintPosition.END,
            })
        end,
        keys = "fjghdksltyrueiwoqpvbcnxmza",
    },
    keys = {
        { "<leader>hp", "<Cmd>HopWord<CR>", desc = "hop word", silent = true },
    },
}
