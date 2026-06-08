local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
	vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
	vim.keymap.set("n", "<space>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "<space>f", vim.lsp.buf.formatting, bufopts)
end

capabilities = require("cmp_nvim_lsp").default_capabilties

vim.lsp.config("texlab", {
	cmd = { "texlab" },
	filetypes = { "tex", "bib", "plaintex" },
	settings = {
		texlab = {
			bibtexFormatter = "texlab",
			build = {
				args = { "-X", "compile", "%f", "--synctex", "--keep-logs", "--keep-intermediates" },
				executable = "tectonic",
				forwardSearchAfter = true,
				onSave = true,
			},
			chktex = {
				onEdit = false,
				onOpenAndSave = false,
			},
			diagnosticsDelay = 300,
			formatterLineLength = 80,
			forwardSearch = {
				executable = "zathura",
				args = { "--synctex-forward", "%l:1:%f", "%p" },
			},
			latexFormatter = "latexindent",
			latexindent = {
				modifyLineBreaks = false,
			},
		},
	},
})

vim.lsp.enable("clangd")
vim.lsp.enable("pyright")
vim.lsp.enable("flow")
vim.lsp.enable("eslint")
vim.lsp.enable("ts_ls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("nushell")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("guile_ls")
vim.lsp.enable("texlab")
