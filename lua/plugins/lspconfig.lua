return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ansiblels",
					"azure_pipelines_ls",
					"bashls",
					"cssls",
					"docker_compose_language_service",
					"dockerls",
					"gopls",
					"terraformls",
					"tflint",
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
	        local capabilities = require('cmp_nvim_lsp').default_capabilities()


            local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
			lspconfig.ansiblels.setup({
                capabilities = capabilities
            })
			lspconfig.azure_pipelines_ls.setup({
                capabilities = capabilities
            })
			lspconfig.bashls.setup({
                capabilities = capabilities
            })
			lspconfig.cssls.setup({
                capabilities = capabilities
            })
			lspconfig.docker_compose_language_service.setup({
                capabilities = capabilities
            })
			lspconfig.dockerls.setup({
                capabilities = capabilities
            })
			lspconfig.gopls.setup({
                capabilities = capabilities
            })
			lspconfig.terraformls.setup({
                capabilities = capabilities
            })
			lspconfig.tflint.setup({
                capabilities = capabilities
            })
			lspconfig.yamlls.setup({
                capabilities = capabilities
            })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
