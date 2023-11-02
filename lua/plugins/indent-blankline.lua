return {
	"lukas-reineke/indent-blankline.nvim",
	config= function(_, opts)
		require("ibl").setup(require("indent-rainbowline").make_opts(opts))
	end,
	dependencies = {
		"TheGLander/indent-rainbowline.nvim",
	},
}
