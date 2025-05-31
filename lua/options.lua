vim.g.mapleader = " "
vim.g.maplocalleader = ' '

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.o.breakindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.scrolloff = 10

vim.g.have_nerd_font = true

vim.o.number = true
vim.o.relativenumber = true

vim.o.confirm = true

vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})


