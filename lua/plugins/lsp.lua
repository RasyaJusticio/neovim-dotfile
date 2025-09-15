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
				automatic_enable = false,
				ensure_installed = {
					"lua_ls",
					"phpactor",
					"laravel_ls",
					"emmet_ls",
					"eslint",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			vim.lsp.enable("lua_ls")

			vim.lsp.enable("laravel_ls")
			vim.lsp.enable("phpactor")
			vim.lsp.enable("emmet_ls")
			vim.lsp.enable("eslint")
		end,
	},
}
