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
