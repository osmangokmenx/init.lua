local status, null_ls = pcall(require, "null-ls")
if (not status) then return end
local lSsources = {
	null_ls.builtins.formatting.prettier.with({
		filetypes = {
			"javascript","typescript","css","scss","html","json","yaml","markdown","graphql","md","txt",
		},
	}),
	null_ls.builtins.formatting.stylua,
}
null_ls.setup({
	sources = lSsources,
})
