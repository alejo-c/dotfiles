if not vim.g.neovide then
  return
end

local g = vim.g
local o = vim.o
local map = vim.keymap.set

-- local alpha = function()
--   return string.format("%x", math.floor(255 * (g.transparency or 0.8)))
-- end

-- o.guifont = "Source Code Pro:h11"
o.guifont = "FiraCode Nerd Font:h11"
--g.neovide_opacity = 0.7
--g.transparency = 0.7
-- g.neovide_background_color = "#0F161E" .. alpha()

g.neovide_remember_window_size = false
g.neovide_hide_mouse_when_typing = true

g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
  g.neovide_scale_factor = g.neovide_scale_factor * delta
end

local keymaps = {
  {
    { "n", "i" },
    "<c-+>",
    function()
      change_scale_factor(1.05)
    end,
  },
  {
    { "n", "i" },
    "<c-->",
    function()
      change_scale_factor(1 / 1.05)
    end,
  },
}

for _, v in pairs(keymaps) do
  map(v[1], v[2], v[3], { noremap = true })
end
