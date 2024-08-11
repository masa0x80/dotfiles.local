local default = vim.fn.expand("$SCRAPBOOK_DIR")
local family = vim.fn.expand("$HOME/Library/Mobile Documents/iCloud~com~logseq~logseq/Documents/masa723")

require("telekasten").setup({
	home = default .. "/pages",

	auto_set_filetype = false,

	dailies = default .. "/journals",
	weeklies = default .. "/pages/weekly",
	templates = default .. "/pages/templates",

	template_new_note = default .. "/templates/new_note.md",
	template_new_daily = default .. "/templates/daily.md",
	template_new_weekly = default .. "/templates/weekly.md",

	calendar_opts = {
		-- calendar week display mode: 1 .. 'WK01', 2 .. 'WK 1', 3 .. 'KW01', 4 .. 'KW 1', 5 .. '1'
		weeknm = 1,
		-- use monday as first day of week: 1 .. true, 0 .. false
		calendar_monday = 0,
		-- calendar mark: where to put mark for marked days: 'left', 'right', 'left-fit'
		calendar_mark = "left-fit",
	},

	image_link_style = "markdown",
	image_subdir = "assets",
	extension = ".md",

	uuid_type = "%Y%m%d%H%M%S",
	uuid_sep = "-",

	tag_notation = "#tag",
	subdirs_in_links = true,

	follow_creates_nonexisting = true,
	dailies_create_nonexisting = true,
	weeklies_create_nonexisting = true,

	sort = "filename",
	new_note_location = "prefer_home",

	rename_update_links = true,

	vaults = {
		family = {
			home = family .. "/pages",

			dailies = family .. "/journals",
			weeklies = family .. "/pages/weekly",
			templates = family .. "/pages/templates",

			template_new_note = family .. "/templates/new_note.md",
			template_new_daily = family .. "/templates/daily.md",
			template_new_weekly = family .. "/templates/weekly.md",

			auto_set_filetype = false,

			image_link_style = "markdown",
			image_subdir = "assets",
			extension = ".md",

			uuid_type = "%Y%m%d%H%M%S",
			uuid_sep = "-",

			tag_notation = "#tag",
			subdirs_in_links = true,

			follow_creates_nonexisting = true,
			dailies_create_nonexisting = true,
			weeklies_create_nonexisting = true,

			sort = "filename",
			new_note_location = "prefer_home",

			rename_update_links = true,
		},
	},
})

vim.api.nvim_create_user_command("OpenObsidian", function()
	local vault_path = require("telekasten").Cfg.home
	local path = vim.fn.shellescape(vim.fn.expand("%"):gsub(vault_path .. "/", ""))
	local vault = vault_path:gsub(".*/", "")
	vim.fn.execute("!open 'obsidian://open?vault=" .. vault .. "&file=" .. path .. "'")
end, {})
