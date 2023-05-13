return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
		opts = {
			ensure_installed = { "vimdoc", "javascript", "typescript", "c", "lua", "rust" },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			}
		},
	}
}
