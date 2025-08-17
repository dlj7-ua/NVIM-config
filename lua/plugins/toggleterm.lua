return function()
require("toggleterm").setup{
  size = 20, -- tamaño del split
  open_mapping = [[<c-t>]], -- tecla para abrir/cerrar el terminal
  shade_terminals = true,
  shading_factor = 2, -- oscuridad del fondo
  direction = "horizontal", -- opciones: horizontal, vertical, tab, float
  float_opts = {
    border = "curved" -- borde bonito para el modo flotante
  }
}
end
