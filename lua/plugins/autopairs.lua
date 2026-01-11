return function()
    local autopairs = require('nvim-autopairs')
    
    autopairs.setup({
      check_ts = true,  -- Usa Treesitter si está disponible
      ts_config = {
        lua = { 'string' },
        javascript = { 'string', 'template_string' },
        java = false,
      },
      -- Deshabilitar en ciertos tipos de archivo si es necesario
      disable_filetype = { "TelescopePrompt", "vim" },
    })
end
