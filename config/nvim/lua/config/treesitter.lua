require("nvim-treesitter").setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
})
require("nvim-treesitter").install({ "all" })

vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		local lang = vim.treesitter.language.get_lang(args.match) or args.match
		local installed = require("nvim-treesitter").get_installed("parsers")
		if vim.tbl_contains(installed, lang) then
			vim.treesitter.start(args.buf)
		end
	end,
})
