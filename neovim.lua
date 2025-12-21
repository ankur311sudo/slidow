return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = false, -- or true if you prefer
			term_colors = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				telescope = { enabled = true },
				notify = true,
				mini = { enabled = true },
				lsp_trouble = true,
				which_key = true,
			},
		},
	},
}
