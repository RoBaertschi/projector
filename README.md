# Projector

A simple Project manager for vim.

## Dependencies

plenary.nvim

## Setup

```lua
require("projector").setup {
  project_dirs = { "~/dev", "~/nvim_plugins" } -- Where to search for Project
                                               -- directory. Every subdirectory
                                               -- will be added
}
```

## Usage

Run _:Projector_ and choose one of the project directories or press q to exit.

## Future Features

- [x] Popup and directories
- [ ] Pin projects
- [ ] Hide projects
- [ ] Cache?
- [ ] Remove dependency to planery?
