return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      width = 55,
      height = 1,
      preset = {
        header = require "plugins.headers.labyrinth",
        keys = {
          { key = "p", desc = "Find Projects", action = ":lua Snacks.dashboard.pick('projects')" },
          { key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { key = "w", desc = "Find Word", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { key = "n", desc = "New File", action = ":ene | startinsert" },
          { key = "q", desc = "Quit", action = ":qa" },
        },
      },
      sections = {
        {
          section = "header",
          padding = 1,
        },
        {
          title = "Keymaps",
          section = "keys",
          indent = 2,
          padding = 1,
        },
        {
          title = "Projects",
          section = "projects",
          indent = 2,
          padding = 1,
          limit = 5,
        },
        {
          title = "Recent Files",
          section = "recent_files",
          indent = 2,
          padding = 1,
          limit = 5,
        },
      },
      formats = {
        header = { "%s", align = "center" },
        -- fully disable icons
        icon = function() return {} end,
      },
    },
  },
}
