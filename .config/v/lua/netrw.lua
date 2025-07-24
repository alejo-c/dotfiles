local g = vim.g
local cmd = vim.cmd

-- Netrw settings
g.netrw_banner = 0        
g.netrw_liststyle = 3     
--g.netrw_browse_split = 4
g.netrw_altv = 1          
--g.netrw_winsize = 25    

local function toggle_copy()
  cmd("normal! mf")
end

local function toggle_move()
  cmd("normal! mt")
end

local function esc()
  cmd("normal! mu")
  cmd(":noh<cr>")
end

local function paste()
  cmd("normal! cp")
  cmd("normal! mv")
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    local map = vim.keymap.set

    local keymaps = {
        { "n", "h", "u" },
        { "n", "l", "<Plug>NetrwLocalBrowseCheck" },

        { "n", "A", "d" },
        { "n", "a", "%" },
        { "n", "d", "D" },

        { "n", "y", toggle_copy }, 
        { "n", "x", toggle_move }, 
        { "n", "p", paste },

        { "n", "<ESC>", esc },

        { "n", "c", "gn" },
        { "n", ".", "gh" },

        { "n", "q", ":Rex<CR>" },
    }

    for _, v in pairs(keymaps) do
        local opts = { buffer = true, silent = true }
        -- if type(v[3]) == "string" then
            opts.remap = true
        -- end
        map(v[1], v[2], v[3], opts)
    end

    map("n", "r", "R", { buffer = true, silent = true })
    map("n", "R", "r", { buffer = true, silent = true })
  end
})
