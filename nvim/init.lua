require("config.lazy")

vim.opt.fillchars = { eob = "~" }
vim.opt.cursorline = false
vim.opt.number = false
vim.opt.relativenumber = false

function Transparent(color)
	color = color or "tokyonight"
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Transparent()
