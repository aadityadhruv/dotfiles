vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth= 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.mouse = "vn"
vim.opt.scrolloff = 5
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.completeopt = vim.opt.completeopt + { "noselect", "menuone" }
vim.opt.background = "dark"
vim.cmd.colorscheme("retrobox")
vim.cmd.filetype("plugin indent on")
vim.cmd.syntax("enable")


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
vim.keymap.set("n", "<C-f>", "<cmd>Files<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>Lines<CR>", {  silent = true })
vim.keymap.set("n", "<C-b>", "<cmd>Buffers<CR>", { silent = true })



vim.pack.add({
'https://github.com/stevearc/oil.nvim',
'https://github.com/tpope/vim-surround',
'https://github.com/airblade/vim-gitgutter',
'https://github.com/junegunn/fzf',
'https://github.com/junegunn/fzf.vim',
'https://github.com/tpope/vim-obsession',
'https://github.com/tpope/vim-fugitive',
})
require("oil").setup()
vim.lsp.enable({'clangd', 'ty'})
