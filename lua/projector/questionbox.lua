local popup = require("plenary.popup")

local id

function open_popup(opts, cb)
  local height = 20
  local width = 30

  id = popup.create(opts, {
    title = "Projector",
    highlight = "Projector",
    line = math.floor(((vim.o.lines - height) / 2) - 1),
    col = math.floor((vim.o.columns - width) / 2),
    minwidth = width,
    minheight = height,
    callback = cb,
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  })

  local bufnr = vim.api.nvim_win_get_buf(id)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "", {
    callback = function()
      vim.api.nvim_win_close(id, true)
    end,
  })
end
