local M = {}

function M.reset()
  local colorscheme = require("config").colorscheme
  ---@diagnostic disable-next-line: param-type-mismatch
  local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
  if not status_ok then
    vim.notify("colorscheme: " .. colorscheme .. " not found!")
    return
  end
end

-- 模块加载时立即设置 colorscheme
M.reset()

return M

