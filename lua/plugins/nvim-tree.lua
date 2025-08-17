return function()
require("nvim-tree").setup {
  hijack_netrw = true,
  view = {
    width = 30,
    side = "left"
  },
  renderer = {
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
      }
    }
  },
  filters = {
    dotfiles = false, -- muestra archivos ocultos
  }
}
end
