local function set_lsp_keymaps(bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }
	local keymap = vim.keymap.set

	keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
	local diagnostics_visible = false
	keymap('n', '<leader>d', function()
	  diagnostics_visible = not diagnostics_visible
	  if diagnostics_visible then
	    vim.diagnostic.show()
	  else
	    vim.diagnostic.hide()
	  end
	end, { desc = 'Toggle visibility of [D]iagnostics' }, opts)

end

local lspconfig = require('lspconfig')

for _, server in ipairs({ "clangd", "lua_ls", "pyright", "rust_analyzer" }) do
	lspconfig[server].setup({
		on_attach = function(_, bufnr)
			set_lsp_keymaps(bufnr)
		end,
	})
end
