vim.opt.bs = 2
vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth= 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.t_Co = 256
vim.opt.number = true
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.mouse = "vn"
vim.opt.scrolloff = 5
vim.opt.completeopt = vim.opt.completeopt + { "noselect", "menuone" }
vim.api.nvim_create_autocmd('BufReadPre', {
    pattern = { "*.md", "*.txt" },
  callback = function()
      vim.opt_local.textwidth = 80
  end,
})
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})
vim.api.nvim_create_autocmd('InsertCharPre', {
  callback = function()
        vim.lsp.completion.get()
  end,
})
vim.keymap.set('n', 'grd', function()
  vim.lsp.buf.definition()
end)
vim.keymap.set('n', 'gd', function()
  vim.diagnostic.open_float()
end)



vim.pack.add({
    'https://github.com/stevearc/oil.nvim',
})
require("oil").setup()
vim.lsp.enable({'clangd', 'ty'})
