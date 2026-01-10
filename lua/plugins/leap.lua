local leap = require('leap')

-- Configuración básica
leap.setup({
  case_sensitive = false,
})

-- Keybindings
vim.keymap.set('n', 's', '<Plug>(leap-forward)')
vim.keymap.set('n', 'S', '<Plug>(leap-backward)')
vim.keymap.set('x', 's', '<Plug>(leap-forward)')
vim.keymap.set('x', 'S', '<Plug>(leap-backward)')
vim.keymap.set('o', 'x', '<Plug>(leap-forward)')
vim.keymap.set('o', 'X', '<Plug>(leap-backward)')

return leap
