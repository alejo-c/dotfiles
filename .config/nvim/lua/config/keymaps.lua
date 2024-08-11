local map = vim.keymap.set

local keymaps = {
  { { "n", "v" }, "-", "^" },
  { { "n", "v" }, "_", "g_" },
  -- { "n", "<c-a>", "gg<S-v>G" },
}

for _, v in pairs(keymaps) do
  map(v[1], v[2], v[3], { noremap = true, silent = true })
end
