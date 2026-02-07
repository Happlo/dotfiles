local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("options")
require("keymaps")
-- Load only the plugins we want: neotree (file tree), lualine (status bar), oxocarbon (colors)
require("lazy").setup({
  "plugins.neotree",
  "plugins.lualine",
  "plugins.oxocarbon",
})
-- skip full LSP setup for minimal config
-- require("setup-lsp")
