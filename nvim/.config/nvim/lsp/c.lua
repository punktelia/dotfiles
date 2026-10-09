return {
    cmd = {'clangd'},
    filetypes = { 'c', 'cpp'},
    root_markers = {{ '.clangd' }, '.git' },
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
}
