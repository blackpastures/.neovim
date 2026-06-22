return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    sidebars = { "qf", "vista_kind", "packer" },
    styles = {
      sidebars = "dark", -- style for sidebars, see below
      floats = "dark", -- style for floating windows
    },
    on_colors = function(colors) colors.terminal.black = colors.terminal.black_bright end,
  },
}
