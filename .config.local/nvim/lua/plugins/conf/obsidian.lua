local c = require("config.color")
require("obsidian").setup({
	dir = vim.fn.expand("$SCRAPBOOK_DIR"),
	daily_notes = {
		folder = "daily",
		date_format = "%Y-%m-%d",
		template = "daily.md",
	},
	completion = {
		nvim_cmp = true,
		min_chars = 1,
	},
	new_notes_location = "notes_subdir",
	note_id_func = function(title)
		return title
	end,
	wiki_link_func = function(opts)
		return string.format("[[%s]]", opts.path:gsub("%.md$", ""))
	end,
	markdown_link_func = function(opts)
		return string.format("[%s](%s)", opts.label, opts.path)
	end,
	preferred_link_style = "wiki",
	disable_frontmatter = true,
	templates = {
		subdir = "templates",
		date_format = "%Y-%m-%d",
		time_format = "%H:%M",
	},
	follow_url_func = function(url)
		vim.fn.jobstart({ "open", url })
	end,
	ui = {
		checkboxes = {
			[" "] = { char = "", hl_group = "ObsidianTodo" },
			["%-"] = { char = "󰡖", hl_group = "ObsidianDone" },
			["x"] = { char = "󰄵", hl_group = "ObsidianDone" },
			[">"] = { char = "", hl_group = "ObsidianRightArrow" },
			["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
		},
		bullets = { char = "", hl_group = "ObsidianBullet" },
		hl_groups = {
			ObsidianTodo = { bold = true, fg = c.orange },
			ObsidianDone = { bold = true, fg = c.cyan },
			ObsidianRightArrow = { bold = true, fg = c.orange },
			ObsidianTilde = { bold = true, fg = c.red },
			ObsidianBullet = { bold = true, fg = c.grey },
			ObsidianRefText = { underline = true, fg = c.purple },
			ObsidianExtLinkIcon = { fg = c.purple },
			ObsidianTag = { underline = true, fg = c.cyan, bg = c.bg0 },
			ObsidianHighlightText = { bg = c.dark_yellow },
		},
	},
	workspaces = {
		{
			name = "scrapbook",
			path = vim.fn.expand("$SCRAPBOOK_DIR"),
		},
		{
			name = "home",
			path = vim.fn.expand("$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/masa723"),
		},
	},
})
