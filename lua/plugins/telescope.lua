return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    config = function()
      require("telescope").setup({})
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fu", builtin.lsp_workspace_symbols, { desc = "Telescope workspace grep" })
      vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Telescope document grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
    end,
  },
}
