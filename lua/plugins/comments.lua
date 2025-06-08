return {
  'numToStr/Comment.nvim',
  opts = {},
  config = function(_, opts)
    -- Initialize the plugin with opts
    require("Comment").setup(opts)

    -- Normal mode: <leader>/ to toggle comment on the current line
    vim.keymap.set('n', '<leader>/', function()
      require('Comment.api').toggle.linewise.current()
    end, { noremap = true, silent = true, desc = "Toggle comment line" })

    -- Visual mode: <leader>/ to toggle comments on selected lines
    vim.keymap.set('v', '<leader>/', function()
      local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
      vim.api.nvim_feedkeys(esc, 'nx', false)
      require('Comment.api').toggle.linewise(vim.fn.visualmode())
    end, { noremap = true, silent = true, desc = "Toggle comment selection" })
  end,
}
