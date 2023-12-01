local M = {}

---scans the current working directory
---@return nil|string[] dirs on error nil else all files in the directory
local function scancwd()
  local cwd = vim.fn.getcwd()
  if cwd == nil then
    return nil
  end
  local dirs
  for i in vim.fs.dir(cwd) do
    table.insert(dirs, i)
  end

  return dirs
end

M.scancwd = scancwd

return M
