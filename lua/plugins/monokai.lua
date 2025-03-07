-- Monokai for syntax highlighting and rose-pine for elements
return {
    "tanvirtin/monokai.nvim",
    config = function()
        vim.cmd("colorscheme monokai_soda")
        local monokai = require("monokai")
        local palette = monokai.soda

        monokai.setup({
            palette = {
                base1 = "#191724",
                base2 = "#1f1d2e",
                base3 = "#26233a",
                base4 = "#6e6a86",
                base5 = "#908caa",
             -- base6 = '#9ca0a4',
             -- base7 = '#b1b1b1',
                border = "#524f67",
            },
        })
    end,
}
