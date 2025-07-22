local map = vim.keymap.set

local keymaps = {
  { { "n", "v" }, "-", "^" },
  { { "n", "v" }, "_", "g_" },
  { "n", "<leader>a", "gg<s-v>G" },
  { "n", "<leader>w", ":w<cr>" },
  { "n", "<leader>W", ":wa<cr>" },
  { "n", "<leader>q", ":q<cr>" },
  { "n", "<leader>qa", ":qa<cr>" },
  { "n", "<leader>Q", ":q!<cr>" },
  -- { { "n", "v" }, "n", "'Nn'[v:searchforward] . 'zz'" },
  --{ { "n", "v" }, "n", "'Nn'[v:searchforward]" },
}

for _, v in pairs(keymaps) do
  map(v[1], v[2], v[3], { noremap = false, silent = true })
end

map("n", "Q", "q", { noremap = true })
