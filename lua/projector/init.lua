local M = {}

local qb = require("projector.questionbox")
local utils = require("projector.util")

---@alias opts { project_dirs: string[] }
---@type opts
local opts = {
  project_dirs = { "~/dev", "~/nvim_plugins" },
}

---opens the projector menu
local function open_projector_menu()
  local menu_opts = {}
  for _, proj_dir in ipairs(opts.project_dirs) do
    for dir in vim.fs.dir(proj_dir) do
      if vim.fn.isdirectory(dir) then
        table.insert(menu_opts, proj_dir .. "/" .. dir)
      end
    end
  end

  local file = io.open("~/.config/projector", "r")

  if file then
    for line in file:lines() do
      table.insert(menu_opts, line)
    end
  end

  local cb = function(_, sel)
    print(sel)
  end

  open_popup(menu_opts, cb)
end

M.open_projector_menu = open_projector_menu

open_projector_menu()

---setup projector with some options
---@param new_opts opts
local function setup(new_opts)
  for k, v in pairs(new_opts) do
    opts[k] = v
  end
end
M.setup = setup

return M
