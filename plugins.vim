call plug#begin('~/.vim/plugged')

"TEMAS
Plug 'sainnhe/gruvbox-material'
Plug 'shinchu/lightline-gruvbox.vim'

"SERVIDOR LENGUAJES
Plug 'neovim/nvim-lspconfig'

"AUTOCOMPLETADO Y SINTAXIS
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lua/completion-nvim'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

"COPILOT
Plug 'github/copilot.vim'

"Plugins Python
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"STATUS BAR
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'

"TREE
Plug 'scrooloose/nerdtree'

"TYPING
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"TMUX
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"TEST
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

"IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

"GIT
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
call plug#end()

