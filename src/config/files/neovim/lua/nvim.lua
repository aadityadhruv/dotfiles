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

vim.lsp.enable({'clangd', 'ty'})
