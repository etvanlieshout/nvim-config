return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {"lua", "javascript"},
			-- ensure_installed = { "lua" },
			highlight = {enable = true },
			indent = {enable = true },
		})
		-- On initial set up, each language needs to be manually installed
		-- via :TSInstall [language name], eg: :TSInstall c<CR> to install c
		-- parsing; could also add it here, but then it will reinstall each time
		-- vim.cmd "TSInstall c"
	end
}
