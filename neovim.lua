return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyodark",
		},
	},

	{
		"tiagovla/tokyodark.nvim",
		priority = 1000,
		opts = {
			-- keep empty or add options later
		},
		config = function(_, opts)
			require("tokyodark").setup(opts)
			vim.cmd([[colorscheme tokyodark]])

			-- ================================
			-- FIX TABLINE CURRENT BUFFER
			-- ================================
			local hl = vim.api.nvim_set_hl

			-- Active tab / buffer
			hl(0, "TabLineSel", {
				fg = "#11121D", -- background color
				bg = "#7AA2F7", -- blue accent
				bold = true,
			})

			-- Inactive tabs
			hl(0, "TabLine", {
				fg = "#787C99",
				bg = "#11121D",
			})

			-- Fill area
			hl(0, "TabLineFill", {
				bg = "#11121D",
			})
		end,
	},
}
