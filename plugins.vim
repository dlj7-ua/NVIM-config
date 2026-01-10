call plug#begin('~/.vim/plugged')

"TEMAS
Plug 'sainnhe/gruvbox-material'
Plug 'shinchu/lightline-gruvbox.vim'

"AUTOCOMPLETADO Y SINTAXIS
Plug 'sheerun/vim-polyglot'
" Plug 'nvim-lua/completion-nvim'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

"Copilot
Plug 'github/copilot.vim'

"Avante + dependencies
Plug 'nvim-lua/plenary.nvim' " Dependency for Avante and Telescope
Plug 'MunifTanjim/nui.nvim' " Dependency for Avante
Plug 'stevearc/dressing.nvim' " Dependency for Avante
Plug 'nvim-tree/nvim-web-devicons' " Dependency for Avante
Plug 'yetone/avante.nvim', { 'do': 'make' }

"Latex
Plug 'lervag/vimtex'

"Plugins Python
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"STATUS BAR
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'

"TREE
Plug 'nvim-tree/nvim-tree.lua'

"SEARCH
"Delete coment if Avante is deleted Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'do': ':UpdateRemotePlugins' } "Plugin de búsqueda
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } "FZF para Telescope
Plug 'nvim-telescope/telescope-file-browser.nvim' " Navegación de archivos
Plug 'nvim-telescope/telescope-project.nvim' " Navegación de proyectos
Plug 'nvim-telescope/telescope-media-files.nvim' " Previsualización de archivos multimedia

"TYPING
Plug 'windwp/nvim-autopairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"TMUX
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"toggleterm
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

"TEST
" Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

"IDE
Plug 'editorconfig/editorconfig-vim'
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
" Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim',  { 'do': 'cd app && npm install'  }

"GIT
Plug 'lewis6991/gitsigns.nvim'
call plug#end()

