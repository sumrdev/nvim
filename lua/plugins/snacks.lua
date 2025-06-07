return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    dashboard = { enabled = true },
    explorer = { enabled = true },
  },
  keys = {
    { "<leader>gg", function() Snacks.lazygit() end,  desc = "Lazygit" },
    { "<leader>e",  function() Snacks.explorer() end, desc = "File Explorer" },
    { "<c-/>",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
  }
}
