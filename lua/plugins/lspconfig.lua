return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ansiblels", "azure_pipelines_ls", "bashls", "cssls", "docker_compose_language_service", "dockerls", "gopls", "terraformls", "tflint", "yamlls"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ansiblels.setup({})
            lspconfig.azure_pipelines_ls.setup({})
            lspconfig.bashls.setup({})
            lspconfig.cssls.setup({})
            lspconfig.docker_compose_language_service.setup({})
            lspconfig.dockerls.setup({})
            lspconfig.gopls.setup({})
            lspconfig.terraformls.setup({})
            lspconfig.tflint.setup({})
            lspconfig.yamlls.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
