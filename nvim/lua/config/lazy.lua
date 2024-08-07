local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{
			"LazyVim/LazyVim",
			import = "lazyvim.plugins",
			opts = {
				colorscheme = "sonokai",
				news = {
					lazyvim = true,
					neovim = true,
				},
			},
		},
		{ import = "lazyvim.plugins.extras.linting.eslint" },
		{ import = "lazyvim.plugins.extras.formatting.prettier" },

		-- Typescript
		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "lazyvim.plugins.extras.lang.json" },
		{ import = "lazyvim.plugins.extras.lang.tailwind" },

		-- Golang
		{ import = "lazyvim.plugins.extras.lang.go" },

		-- R
		{
			"R-nvim/R.nvim",
			lazy = false,
			opts = {
				R_args = { "--quiet", "--no-save" },
				hook = {
					on_filetype = function()
						vim.keymap.set("n", "<Enter>", "<Plug>RDSendLine", { buffer = true })
						vim.keymap.set("v", "<Enter>", "<Plug>RSendSelection", { buffer = true })

						local wk = require("which-key")
						wk.add({
							buffer = true,
							{ "<localleader>a", group = "all" },
							{ "<localleader>b", group = "between marks" },
							{ "<localleader>c", group = "chunks" },
							{ "<localleader>f", group = "functions" },
							{ "<localleader>g", group = "goto" },
							{ "<localleader>i", group = "install" },
							{ "<localleader>k", group = "knit" },
							{ "<localleader>p", group = "paragraph" },
							{ "<localleader>q", group = "quarto" },
							{ "<localleader>r", group = "r general" },
							{ "<localleader>s", group = "split or send" },
							{ "<localleader>t", group = "terminal" },
							{ "<localleader>v", group = "view" },
						})
					end,
				},
				pdfviewer = "",
			},
			config = function(_, opts)
				vim.g.rout_follow_colorscheme = true
				require("r").setup(opts)
				require("r.pdf.generic").open = vim.ui.open
			end,
		},

		-- Extra
		{ import = "lazyvim.plugins.extras.coding.copilot" },
		{ import = "lazyvim.plugins.extras.util.mini-hipatterns" },
		{ import = "plugins" },
	},
	defaults = {
		lazy = false,
		version = false,
	},
	dev = {
		path = "~/.ghq/github.com",
	},
	checker = { enabled = true },
	performance = {
		cache = {
			enabled = true,
		},
		rtp = {
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				"netrwPlugin",
				"rplugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
	debug = false,
})
