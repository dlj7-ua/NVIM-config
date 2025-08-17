--[[
| Función                                         | Descripción                                       | Binding ejemplo                          |
| ----------------------------------------------- | ------------------------------------------------- | ---------------------------------------- |
| next_hunk / prev_hunk                            | Saltar al siguiente/anterior hunk                 | ]c / [c                                  |
| stage_hunk / reset_hunk                          | Aplicar o revertir los cambios de un hunk         | <leader>hs / <leader>hr                  |
| stage_buffer / reset_buffer                      | Aplicar o revertir todos los cambios en el buffer | <leader>hS / <leader>hR                  |
| preview_hunk                                     | Mostrar el diff del hunk en un popup              | <leader>hp                               |
| blame_line                                       | Mostrar información de autor y fecha de la línea  | <leader>hb                               |
| toggle_current_line_blame                        | Mostrar/ocultar blame en línea                    | <leader>tb                               |
| diffthis                                         | Mostrar diff del buffer actual con HEAD           | <leader>hd                               |
| toggle_signs, toggle_linehl, toggle_numhl       | Activar/desactivar los signs y resaltado          | <leader>ht, <leader>hl, <leader>hn      |
]]

return function()
require('telescope').setup{
  extensions = {
    project = {
      base_dirs = {
        '~/Documents/Uni',
      },
      hidden_files = false, -- Mostrar archivos ocultos
    }
  }
}
require('telescope').load_extension('project')
require('telescope').load_extension('media_files')
end
