
-- Sync clipboard between OS and Neovim. Schedule the setting after `UIEnter` because it can
-- increase startup-time. Remove this option if you want your OS clipboard to remain independent.
-- See `:h 'clipboard'`
vim.api.nvim_create_autocmd('UIEnter', {
	callback = function ()
		vim.o.clipboard = 'unnamedplus'
	end
})


-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:h vim.hl.hl_op()`
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	callback = function ()
		vim.hl.hl_op()
	end
})

