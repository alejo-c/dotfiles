local map = vim.keymap.set

local keymaps = {
  --{ { "n", "v" }, "n", "'Nn'[v:searchforward]" },
  { { "n", "v" }, "<c-j>", "<c-w>j" },
  { { "n", "v" }, "<c-k>", "<c-w>k" },
  { { "n", "v" }, "<c-l>", "<c-w>l" },
  { { "n", "v" }, "<c-h>", "<c-w>h" },
  { { "n", "v" }, "-", "^" },
  { { "n", "v" }, "_", "g_" },
  -- { { "n", "v" }, "n", "'Nn'[v:searchforward] . 'zz'" },
  { "n", "<c-a>", "gg<s-v>G" },
}

for _, v in pairs(keymaps) do
  map(v[1], v[2], v[3], { noremap = false, silent = false })
end
