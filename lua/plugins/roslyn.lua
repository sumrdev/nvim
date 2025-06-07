return {
	"seblyng/roslyn.nvim",
	ft = "cs", -- filetype for C#
	opts = {
		-- your configuration comes here; leave empty for default settings
		-- NOTE: You must configure `cmd` in `config.cmd` unless you have installed via mason
		cmd = {
			"dotnet",
			"/home/mar/.config/roslyn/Microsoft.CodeAnalysis.LanguageServer.dll",
			"--logLevel=Information",
			"--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
			"--stdio",
		},

		config = {
			-- Example settings for the language server
			settings = {
				["csharp|inlay_hints"] = {
					-- ... your inlay hint settings
				},
				-- Other Roslyn-specific settings
				dotnet_enable_references_code_lens = true,
				dotnet_enable_tests_code_lens = true,
			},
		},
	},
}
