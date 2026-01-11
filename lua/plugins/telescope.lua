-- Configuración de Telescope
return function()
  local telescope = require('telescope')
  local actions = require('telescope.actions')

  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-u>"] = false,
          ["<C-d>"] = false,
        },
      },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
      },
      live_grep = {
        theme = "dropdown",
      },
      buffers = {
        theme = "dropdown",
      },
    },
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      },
    },
  })

  -- Cargar extensiones
  pcall(telescope.load_extension, 'fzf')
  pcall(telescope.load_extension, 'file_browser')
  pcall(telescope.load_extension, 'project')
  pcall(telescope.load_extension, 'media_files')
end
