local lspconfig = require("lspconfig")

lspconfig.eslint.setup({
  settings = {
    validate = { "javascript", "javascriptreact", "typescript", "typescriptreact" }, -- Hangi dosya türlerinde ESLint’in çalışacağını belirt
    eslint = {
      quiet = true,
    },
    codeActionsOnSave = {
      source = {
        fixAll = "never", -- Tüm kaynak düzeltmelerini kapat
        fixAll_eslint = "explicit", -- ESLint düzeltmelerini açıkça belirt
      },
      organizeImports = "never", -- İçe aktarmaları düzenlemeyi kapat
    },
  },
})
