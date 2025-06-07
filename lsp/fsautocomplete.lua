-- thanks
-- https://gist.github.com/rdipardo/e82252235955987c4b2b7f43ef808597

local fsac_get_root_dir = function(bufnr, callback)
  local cwd = vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr))
  local proj_root = vim.fs.root(cwd, function(name, path)
    local is_dotnet_proj = (name:match("%.sln$") or name:match("%.fsproj$")) ~= nil
    local is_fsharp_file = name:match("%.fs[ix]?$") ~= nil
    return (is_dotnet_proj or is_fsharp_file)
  end)
  callback(proj_root)
end

local fsac_is_client_reusable = function(client, config)
  local workspace = client.settings.workspace or {}
  return (config.root_dir == client.root_dir or next(workspace))
end

return {
  cmd = { "fsautocomplete", "--adaptive-lsp-server-enabled" },
  filetypes = { "fsharp" },
  root_markers = {
    "*.fsproj",
    "*.sln",
  },
  root_dir = fsac_get_root_dir,
  reuse_client = fsac_is_client_reusable,
  init_options = {
    AutomaticWorkspaceInit = true,
  },
}
