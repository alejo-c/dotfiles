return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      transparent = "true",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      style = "night",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
