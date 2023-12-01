package = "projector"
version = "dev-1"
source = {
  url = "git+https://github.com/RoBaertschi/projector",
}
description = {
  summary = "A simple Project manager for vim.",
  detailed = [[
A simple Project manager for vim.
]],
  homepage = "https://github.com/RoBaertschi/projector",
  license = "*** please specify a license ***",
}
build = {
  type = "builtin",
  modules = {
    ["projector.init"] = "lua/projector/init.lua",
  },
  copy_directories = {
    "doc",
  },
}
