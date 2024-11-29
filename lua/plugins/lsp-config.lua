return {
	{	-- Install mason plugin to setup lsp integration
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{	-- Mason-lspcopnfig automatically installs desired language servers
		-- See mason-lspconfig github docs for list of supported servers
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "gopls", "jedi_language_server", "rust_analyzer" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.gopls.setup({})
			lspconfig.jedi_language_server.setup({}) -- python
			lspconfig.rust_analyzer.setup({})

			-- set up keymap for goto Def
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', 'gD', '<cmd> tab split | lua vim.lsp.buf.definition()<CR>', {})
			-- set up keymap for code actions
			vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
