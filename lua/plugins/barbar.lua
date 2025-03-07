return {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
        "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },

    config = function()
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        map("n", "<Leader><Tab>", "<Cmd>BufferPrevious<CR>", opts)


        -- Goto buffer in position...
        map("n", "<Leader><Tab>1", "<Cmd>BufferGoto 1<CR>", opts)
        map("n", "<Leader><Tab>2", "<Cmd>BufferGoto 2<CR>", opts)
        map("n", "<Leader><Tab>4", "<Cmd>BufferGoto 3<CR>", opts)
        map("n", "<Leader><Tab>4", "<Cmd>BufferGoto 4<CR>", opts)
        map("n", "<Leader><Tab>5", "<Cmd>BufferGoto 5<CR>", opts)
        map("n", "<Leader><Tab>6", "<Cmd>BufferGoto 6<CR>", opts)
        map("n", "<Leader><Tab>7", "<Cmd>BufferGoto 7<CR>", opts)
        map("n", "<Leader><Tab>8", "<Cmd>BufferGoto 8<CR>", opts)
        map("n", "<Leader><Tab>9", "<Cmd>BufferGoto 9<CR>", opts)
        map("n", "<Leader><Tab>0", "<Cmd>BufferLast<CR>", opts)

        -- Pin/unpin buffer
        map("n", "<Leader><Tab>p", "<Cmd>BufferPin<CR>", opts)

        -- Goto pinned/unpinned buffer
        --                 :BufferGotoPinned
        --                 :BufferGotoUnpinned

        -- Close buffer
        map("n", "<Leader><Tab>c", "<Cmd>BufferClose<CR>", opts)
    end,
}
