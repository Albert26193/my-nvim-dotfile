require("nvim-treesitter.configs").setup({
	textobjects = {
		select = {
			enable = true,
			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["if"] = "@function.inner",
				["af"] = "@function.outer",
				["id"] = "@conditional.inner",
				["ad"] = "@conditional.outer",
				["il"] = "@loop.inner",
				["al"] = "@loop.outer",
				["ii"] = "@parameter.inner",
				["ai"] = "@parameter.outer",
				["i="] = { query = "@assignment.inner", desc = "assignment inner" },
				["a="] = { query = "@assignment.outer", desc = "assignment outer" },
				["l="] = { query = "@comment.inner", desc = "comment inner" },
				["r="] = { query = "@comment.outer", desc = "comment outer" },
			},
			-- You can choose the select mode (default is charwise 'v')
			--
			-- Can also be a function which gets passed a table with the keys
			-- * query_string: eg '@function.inner'
			-- * method: eg 'v' or 'o'
			-- and should return the mode ('v', 'V', or '<c-v>') or a table
			-- mapping query_strings to modes.
			selection_modes = {
				["@parameter.outer"] = "v", -- charwise
				["@function.outer"] = "V", -- linewise
				["@comment.outer"] = "<c-v>", -- blockwise
			},
			-- If you set this to `true` (default is `false`) then any textobject is
			-- extended to include preceding or succeeding whitespace. Succeeding
			-- whitespace has priority in order to act similarly to eg the built-in
			-- `ap`.
			--
			-- Can also be a function which gets passed a table with the keys
			-- * query_string: eg '@function.inner'
			-- * selection_mode: eg 'v'
			-- and should return true or false
			include_surrounding_whitespace = false,
		},

		-- move
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				-- ["]m"] = "@function.outer",
				["]]"] = { query = "@function.inner", desc = "Next function start" },
				--
				-- You can use regex matching (i.e. lua pattern) and/or pass a list in a "query" key to group multiple queries.
				-- ["]o"] = "@loop.*",
				-- ["]o"] = { query = { "@loop.inner", "@loop.outer" } }
				--
				-- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
				-- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
				-- ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
				-- ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
			},
			goto_next_end = {
				-- ["]M"] = "@function.outer",
				-- ["]["] = "@class.outer",
			},
			goto_previous_start = {
				-- ["[m"] = "@function.outer",
				["[["] = "@function.inner",
			},
			goto_previous_end = {
				-- ["[M"] = "@function.outer",
				-- ["[]"] = "@class.outer",
			},
			-- Below will go to either the start or the end, whichever is closer.
			-- Use if you want more granular movements
			-- Make it even more gradual by adding multiple queries and regex.
			goto_next = {
				-- ["]d"] = "@conditional.outer",
			},
			goto_previous = {
				-- ["[d"] = "@conditional.outer",
			},
		},
	},
})