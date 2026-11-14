require("mini.pairs").setup({})
require("mini.icons").setup({})
require("mini.statusline").setup({})
require("mini.jump").setup({})
require("mini.move").setup({
	mappings = {
		-- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
		left = '<M-h>',
		right = '<M-l>',
		down = '<M-j>',
		up = '<M-k>',

		-- Move current line in Normal mode
		line_left = '<M-h>',
		line_right = '<M-l>',
		line_down = '<M-j>',
		line_up = '<M-k>',
	}
})
require("mini.splitjoin").setup({})

local gen_loader = require("mini.snippets").gen_loader
require("mini.snippets").setup({
	mappings = {
		jump_next = '<Tab>',
		jump_prev = '<S-Tab>',
	},
	snippets = {
		gen_loader.from_lang({

		}),
	}
})

require("mini.surround").setup({ })
require("mini.clue").setup()
require("mini.bracketed").setup()
require("mini.animate").setup()
