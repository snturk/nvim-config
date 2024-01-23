local actions = require("telescope.actions")

require('telescope').setup {
	defaults = {
		file_ignore_patterns = { "node_modules", "Pods", ".git", "**/*.d.ts" }
	},
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["<PageUp>"] = actions.preview_scrolling_up,
					["<PageDown>"] = actions.preview_scrolling_down,
        },
      },
    },
  },
}
