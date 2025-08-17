syntax enable
set nocompatible
let &t_ut='' 
set encoding=utf-8
set mouse=a
set showcmd
set showmatch
set clipboard=unnamedplus
set number
set relativenumber
set numberwidth=1
set ruler
set cursorline
set termguicolors
set sw=2

"Tabuladores
set shiftwidth=4
set tabstop=4
filetype indent on
set noexpandtab
set autoindent

" Búsqueda
set hlsearch
set incsearch
set ignorecase
set smartcase

so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/maps.vim

"GRUVBOX configuracion
set background=dark
let g:gruvbox_material_background='hard'
colorscheme gruvbox-material
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

function HighlightsTabsAndSpace ()
call feedkeys(":set listchars=eol:¬,tab:\\|_,trail:~,extends:>,precedes:<,space:\\|\<CR>")
call feedkeys(":set list\<CR>")
endfunction

nmap <leader>t :call HighlightsTabsAndSpace()<CR>
nmap <leader>tt :set nolist<CR>

" Nvim-tree configuración básica
lua << EOF
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
EOF

lua << EOF
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitGutterAdd'   , text = '+'},
    change       = {hl = 'GitGutterChange', text = '~'},
    delete       = {hl = 'GitGutterDelete', text = '_'},
    topdelete    = {hl = 'GitGutterDeleteChange', text = '‾'},
    changedelete = {hl = 'GitGutterChange', text = '~'},
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns
    local map = function(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navegación entre cambios (igual que gitgutter)
    map('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    -- Acciones típicas
    map('n', '<leader>hs', gs.stage_hunk)
    map('n', '<leader>hr', gs.reset_hunk)
    map('n', '<leader>hp', gs.preview_hunk)
  end
}
EOF
