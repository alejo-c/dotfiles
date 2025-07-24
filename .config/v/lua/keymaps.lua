-- Key mappings
vim.g.mapleader = " " -- Set leader key to space
vim.g.maplocalleader = " " -- Set local leader key (NEW)

local map = vim.keymap.set
local keymaps = {
	{ "n", "<leader>w", ":w<cr>", { desc = "Save current buffer" } },
	{ "n", "<leader>W", ":wa<cr>", { desc = "Save all buffers" } },
	{ "n", "<leader>q", ":q<cr>", { desc = "Quit buffer" } },
	{ "n", "<leader>Q", ":q!<cr>", { desc = "Force quit buffer" } },

	{ { "n", "v" }, "-", "^", { desc = "Go to first non-emtpy character" } },

	-- Normal mode mappings
	{ "n", "<leader>c", ":nohlsearch<CR>", { desc = "Clear search highlights" } },

	-- Center screen when jumping
	{ "n", "<esc>", ":noh<cr>", { desc = "Next search result (centered)" } },
	{ "n", "n", "nzzzv", { desc = "Next search result (centered)" } },
	{ "n", "N", "Nzzzv", { desc = "Previous search result (centered)" } },
	{ "n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" } },
	{ "n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" } },

	-- Delete without yanking
	-- { { "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" } },

	-- Buffer navigation
	{ "n", "<leader>b", ":b #<CR>", { desc = "Switch buffer" } },
	{ "n", "<leader>n", ":bn<CR>", { desc = "Next buffer" } },
	{ "n", "<leader>p", ":bp<CR>", { desc = "Previous buffer" } },
	{ "n", "<leader>d", ":bd<CR>", { desc = "Delete current buffer" } },

	-- Better window navigation
	{ "n", "<leader>h", "<C-w>h", { desc = "Move to left window" } },
	{ "n", "<leader>j", "<C-w>j", { desc = "Move to bottom window" } },
	{ "n", "<leader>k", "<C-w>k", { desc = "Move to top window" } },
	{ "n", "<leader>l", "<C-w>l", { desc = "Move to right window" } },

	-- Splitting & Resizing
	{ "n", "<leader>v", ":vs<CR>", { desc = "Split window vertically" } },
	{ "n", "<leader>s", ":sp<CR>", { desc = "Split window horizontally" } },
	{ "n", "<C-k>", ":resize +2<CR>", { desc = "Increase window height" } },
	{ "n", "<C-j>", ":resize -2<CR>", { desc = "Decrease window height" } },
	{ "n", "<C-h>", ":vertical resize -2<CR>", { desc = "Decrease window width" } },
	{ "n", "<C-l>", ":vertical resize +2<CR>", { desc = "Increase window width" } },

	-- Move lines up/down
	{ "n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" } },
	{ "n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" } },
	{ "v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" } },
	{ "v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" } },

	-- Better indenting in visual mode
	{ "v", "<", "<gv", { desc = "Indent left and reselect" } },
	{ "v", ">", ">gv", { desc = "Indent right and reselect" } },

	-- Quick file navigation
	{ "n", "<leader>e", ":Explore<CR>", { desc = "Open file explorer" } },
	{ "n", "<leader>ff", ":find ", { desc = "Find file" } },

	-- Better J behavior
	{ "n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" } },

	-- Quick config editing
	-- TODO: Implement a function to fzf config files
	{ "n", "<leader>rc", ":e ~/.config/v/init.lua<CR>", { desc = "Edit config" } },
}

-- ==============================================================
-- USEFUL FUNCTIONS
-- ==============================================================

-- Copy Full File-Path
map("n", "<leader>c", function()
	local path = vim.fn.expand("%:p")
	vim.fn.setreg("+", path)
	print("file:", path)
end)

for _, v in pairs(keymaps) do
	map(v[1], v[2], v[3], { noremap = false, silent = true, desc = v[4].desc })
end

map("n", "Q", "q", { noremap = true, desc = "Record" })
map("n", "q", "", { noremap = false, desc = "Disable recording" })
