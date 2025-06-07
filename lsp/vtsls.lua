return {
	cmd = { "vtsls", "--stdio" },
	root_markers = { "package.json", "tsconfig.json", ".git" },
	filetypes = { "vue", "typescript", "javascript", "javascriptreact", "typescriptreact", "css", "html", "scss" },
	settings = {
		vtsls = {
			enableMoveToFileCodeAction = true,
			autoUseWorkspaceTsdk = true,
			experimental = {
				maxInlayHintLength = 30,
				completion = {
					enableServerSideFuzzyMatch = true,
				},
			},
			tsserver = {
				globalPlugins = {
					{
						name = "@vue/typescript-plugin",
						location = "/usr/lib/node_modules/vue-language-server",
						languages = { "vue" },
						configNamespace = "typescript",
						enableForWorkspaceTypeScriptVersions = true,
					},
				},
			},
		},
		typescript = {
			updateImportsOnFileMove = { enabled = "always" },
			suggest = {
				completeFunctionCalls = true,
			},
			inlayHints = {
				enumMemberValues = { enabled = true },
				functionLikeReturnTypes = { enabled = true },
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = true },
				propertyDeclarationTypes = { enabled = true },
				variableTypes = { enabled = false },
			},
		},
		javascript = {
			updateImportsOnFileMove = { enabled = "always" },
		},
		css = {
			validate = true,
			-- Add any VS Code-compatible CSS settings here
		},
		scss = {
			validate = true,
		},
		less = {
			validate = true,
		},
		html = {
			suggest = {
				html5 = true,
			},
			autoClosingTags = true,
			autoCreateQuotes = true,
			-- Add any VS Code-compatible HTML settings here
		},
	},
}
