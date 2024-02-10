local M = {}
M.ui = {theme = 'rxyhn'}

-- Reinforce the Visual highlight override
vim.cmd([[
  augroup VisualHighlightOverride
    autocmd!
    autocmd ColorScheme * highlight Visual guibg=#3a3f43
  augroup END
]])

-- Force apply the highlight once, in case the ColorScheme event is not triggered on startup
vim.api.nvim_command("highlight Visual guibg=#3a3f43")

return M
