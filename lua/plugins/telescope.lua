return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		config = function()
			require("telescope").setup({})
			local builtin = require("telescope.builtin")
		end,
	},
}
