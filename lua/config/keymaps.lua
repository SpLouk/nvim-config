-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Add keymaps
vim.keymap.set("n", "<leader><bs>", function()
  Snacks.bufdelete()
end, { desc = "Close Buffer" })
vim.keymap.set("n", "<C-p>", function()
  vim.lsp.buf.format()
end, { desc = "Format code" })
vim.keymap.set("n", "<leader>cp", function()
  local relative_path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
  vim.fn.setreg("+", relative_path)
  print("Copied: " .. relative_path)
end, { desc = "Copy relative path to clipboard" })
