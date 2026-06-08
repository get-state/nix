return {
	"nvim-lualine/lualine.nvim",
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
	"nvim-tree/nvim-web-devicons",
	"lewis6991/gitsigns.nvim",
	"whonore/Coqtail",
	{
		"isovector/cornelis",
		name = "cornelis",
		ft = "agda",
		dependencies = { "neovimhaskell/nvim-hs.vim", "kana/vim-textobj-user" },
		version = "2.7.0",
	},
	"j-hui/fidget.nvim",
	"onsails/lspkind.nvim",
	{
		url = "https://codeberg.org/jthvai/lavender.nvim",
		branch = "stable",
		lazy = false,
		priority = 1000,
	},
	"rebelot/kanagawa.nvim",
	"vague2k/vague.nvim",
	"yorickpeterse/nvim-pqf",
	"windwp/nvim-autopairs",
	"kylechui/nvim-surround",
	"nvim-treesitter/nvim-treesitter",
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"hrsh7th/nvim-cmp",
				dependencies = {
					"hrsh7th/cmp-nvim-lsp",
					"hrsh7th/cmp-buffer",
					"hrsh7th/cmp-path",
					"dmitmel/cmp-digraphs",
					"hrsh7th/cmp-cmdline",
					"saadparwaiz1/cmp_luasnip",
				},
			},
		},
	},
	"ibhagwan/fzf-lua",
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	"sbdchd/neoformat",
	"ray-x/lsp_signature.nvim",
	"lukas-reineke/indent-blankline.nvim",
	"neanias/everforest-nvim",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
