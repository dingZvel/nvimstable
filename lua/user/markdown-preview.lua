local M = {
  "iamcco/markdown-preview.nvim",
  run = "cd app && npm install",
  setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
  event = "BufReadPost",
}
function M.config()
  -- vim.g.mkdp_browser = "C:/Program Files/BraveSoftware/Brave-Browser/Application/brave.exe"
  local keymap = vim.keymap.set
  local opts = { silent = false }
  keymap("n", "<M-s>", ":MarkdownPreviewToggle<CR>", opts)
end

return M
