vim.lsp.config('*', {
    root_markers = { '.git' },
})

for file_name, type in vim.fs.dir(vim.fn.stdpath('config') .. '/lsp') do
    if type == 'file' and file_name:match('%.lua$') then
        local name = file_name:gsub('.lua', '')
        vim.lsp.enable(name)
    end
end

