local autopairs = require('nvim-autopairs')

autopairs.setup({
  check_ts = true,  -- Usa Treesitter si está disponible
  ts_config = {
    lua = { 'string' },
    javascript = { 'string', 'template_string' },
    java = false,
  },
})

-- Integración con CoC
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
