 " Activar resaltado de sintaxis
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

" Tabuladores
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

" Cargar configuraciones externas
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/maps.vim

" Tema Gruvbox
set background=dark
let g:gruvbox_material_background='hard'
colorscheme gruvbox-material
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

" Función para mostrar caracteres invisibles
function! HighlightsTabsAndSpace()
  set listchars=eol:¬,tab:\|_,trail:~,extends:>,precedes:<,space:\|
  set list
endfunction

nmap <leader>t :call HighlightsTabsAndSpace()<CR>
nmap <leader>tt :set nolist<CR>

"Gitsigns configuration
lua require('plugins.gitsigns')()

"Telescope configuration
lua require('plugins.telescope')()

" Nvim-tree configuration
lua require('plugins.nvim-tree')()

" Avante configuration
lua require('plugins.avante')()

"Toggleterm configuration
lua require('plugins.toggleterm')()

"Autopairs configuration
lua require('plugins.autopairs')()

"Leap configuration
lua require('plugins.leap')()

"Mason configuration
lua require('plugins.mason')()

"DAP configuration
lua require('plugins.dap')()

" Ruta a Python 3
let g:python3_host_prog = '/usr/bin/python3'

" CMake compiler por defecto
compiler cmake
