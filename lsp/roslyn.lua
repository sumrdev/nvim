return {
	filetypes = { "cs" },
	root_markers = {
		".csproj",
		".sln",
	},
	cmd = {
		"dotnet",
		"/home/mar/.config/roslyn/Microsoft.CodeAnalysis.LanguageServer.dll",
		"--logLevel=Information",
		"--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
		"--stdio",
	},
}
