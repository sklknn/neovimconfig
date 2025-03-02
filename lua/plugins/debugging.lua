return {
    {
        "mfussenegger/nvim-dap", -- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation SET UP
        dependencies = { "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio", "leoluz/nvim-dap-go" },

        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            require("dap-go").setup()
            require("dapui").setup()

            vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, {})
            vim.keymap.set("n", "<Leader>c", dap.continue, {})


            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end,
    },
}
