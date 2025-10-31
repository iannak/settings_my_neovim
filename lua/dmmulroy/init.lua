require("dmmulroy.options")
require("dmmulroy.lazy")
require("dmmulroy.keymaps")
require("dmmulroy.highlight_yank")
require("dmmulroy.rotate_windows")
require("dmmulroy.vertical_help")
require("dmmulroy.toggle_diagnostics")
require("dmmulroy.copy_file_path_to_clipboard")
require("dmmulroy.set_file_type")
require("dmmulroy.ocaml_extensions")

-- Identação automática ao salvar (:w)
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		vim.cmd("normal! gg=G")
	end,
})
