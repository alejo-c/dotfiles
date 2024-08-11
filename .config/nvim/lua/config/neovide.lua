if not vim.g.neovide then
  return
end

local g = vim.g
local o = vim.o
local map = vim.keymap.set

-- o.guifont = "Source Code Pro:h11"
o.guifont = "FiraCode Nerd Font:h11"
g.neovide_transparency = 0.7
g.transparency = 0.7
g.neovide_remember_window_size = false

g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
  g.neovide_scale_factor = g.neovide_scale_factor * delta
end

local keymaps = {
  {
    { "n", "i" },
    "<c-+>",
    function()
      change_scale_factor(1.1)
    end,
  },
  {
    { "n", "i" },
    "<c-->",
    function()
      change_scale_factor(1 / 1.1)
    end,
  },
}

for _, v in pairs(keymaps) do
  map(v[1], v[2], v[3], { noremap = true })
end
