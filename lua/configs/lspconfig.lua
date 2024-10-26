-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers =
  { "html", "cssls", "ts_ls", "lua_ls", "clangd", "fsautocomplete", "pyright", "omnisharp", "rust_analyzer", "volar" }
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.ts_ls.setup {
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "/usr/lib/node_modules/vue-language-server",
        languages = { "vue" },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
}

lspconfig.volar.setup {}

lspconfig.omnisharp.setup {
  cmd = { "dotnet", "/home/mar/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll" },
  enable_editorconfig_support = true,
  enable_ms_build_load_projects_on_demand = true,
  enable_roslyn_analyzers = true,
  organize_imports_on_format = true,
  enable_import_completion = true,
  sdk_include_prereleases = true,
  analyze_open_documents_only = false,
}
