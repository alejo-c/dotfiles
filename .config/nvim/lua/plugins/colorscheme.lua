return {
  {
    --"folke/tokyonight.nvim",
    "catppuccin/nvim",
	name = "catppuccin",
    lazy = true,
    opts = {
      --transparent = "true",
      transparent_background = true,
      --styles = {
      --  sidebars = "transparent",
      --  floats = "transparent",
      --},
      style = "mocha",
      --style = "night",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
