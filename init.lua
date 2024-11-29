require("config.basic-vim-settings")
require("config.lazy")

--[[
highlight ColorColumn ctermbg=DarkMagenta
set tabstop=8
set shiftwidth=8
set softtabstop=8
set smartindent
]]--


-- LSP setup
--local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
--if not vim.loop.fs_stat(lazypath) then
--  vim.fn.system({
--    "git",
--    "clone",
--    "--filter=blob:none",
--    "https://github.com/folke/lazy.nvim.git",
--    "--branch=stable", -- latest stable release
--    lazypath,
--  })
--end
--vim.opt.rtp:prepend(lazypath)

--require("lazy").setup({
---- All of the packages goes here
--    "neovim/nvim-lspconfig"
--})

---- Setup language servers.
--local lspconfig = require('lspconfig')


---- Create an event handler for the FileType autocommand
--vim.api.nvim_create_autocmd('FileType', {
--  -- This handler will fire when the buffer's 'filetype' is "python"
--  pattern = 'rust',
--  callback = function(args)
--    vim.lsp.start({
--      name = 'rust-analyzer',
--      cmd = {'name-of-language-server-executable', '--option', 'arg1', 'arg2'},
--      -- Set the "root directory" to the parent directory of the file in the
--      -- current buffer (`args.buf`) that contains either a "setup.py" or a
--      -- "pyproject.toml" file. Files that share a root directory will reuse
--      -- the connection to the same LSP server.
--      root_dir = vim.fs.root(args.buf, {'setup.py', 'pyproject.toml'}),
--    })
--  end,
--})

-- Enable Rust Analyzer language server

--local on_attach = function(client)
--	require'completion'.on_attach(client)
--end
--
--lspconfig.rust_analyzer.setup({
--	on_attach = on_attach,
--	settings = {
--		["rust-analyzer"] = {
--			imports = {
--				granularity = {
--					group = "module",
--				},
--				prefix = "self",
--			},
--			cargo = {
--				buildscripts = {
--					enable = true,
--				},
--			},
--			procMacro = {
--				enable = true
--			},
--		}
--	}
--})
