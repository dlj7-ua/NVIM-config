let mapleader=" "

" Vimtex
nmap <leader>ll <plug>(vimtex-compile)  " Compilar el documento
nmap <leader>lv <plug>(vimtex-view)     " Ver el PDF
nmap <leader>lc <plug>(vimtex-clean)    " Limpiar archivos auxiliares
nmap <leader>lt <plug>(vimtex-toc-open) " Abrir la tabla de contenidos

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" quick semi
nnoremap <Leader>; $a;<Esc>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" Avante
nnoremap <leader>at :AvanteToggle<CR>
nnoremap <leader>ae :AvanteEdit<CR>

"  nvimtree
nnoremap <leader>nt :NvimTreeToggle<CR>
nnoremap <leader>nf :NvimTreeFindFile<CR>

" CoC Refactoring
nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> <leader>rf <Plug>(coc-refactor)
nmap <silent> <leader>rf <Plug>(coc-refactor-selected)
nmap <silent> <leader>ra <Plug>(coc-codeaction)
nmap <silent> <leader>ra <Plug>(coc-codeaction-selected)

" Telescope
"   Files
nnoremap <silent> <leader>f :Telescope file_browser<CR>
nnoremap <silent> <leader>fb :Telescope buffers<CR>
"  Git 
nnoremap <silent> <leader>fg :Telescope live_grep<CR>
nnoremap <silent> <leader>gc :Telescope git_commits<CR>
nnoremap < silent> <leader>gb :Telescope git_branches<CR>
nnoremap <silent> <leader>gs :Telescope git_status<CR>
"  Projects
nnoremap <silent> <leader>p :Telescope project<CR>
nnoremap <silent> <leader>m :Telescope media_files<CR>

" shorter commands
cnoreabbrev blame Gblame
cnoreabbrev diff Gdiff
cnoreabbrev tree NvimTreeToggle
cnoreabbrev find NvimTreeFindFile

" testing
nnoremap <Leader>tn :TestNearest<CR>
nnoremap <Leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tc :!pytest --cov=. --cov-report=term-missing<CR>
nnoremap <leader>tw :!pytest -vv --tb=short --lf<CR>
nnoremap <leader>tx :!pytest -x<CR>

" DAP (Debugger)
" ===============
nnoremap <leader>db :DapToggleBreakpoint<CR>
nnoremap <leader>dc :DapContinue<CR>
nnoremap <leader>dn :DapStepOver<CR>
nnoremap <leader>di :DapStepInto<CR>
nnoremap <leader>do :DapStepOut<CR>
nnoremap <leader>dt :DapTerminate<CR>
nnoremap <leader>dr :DapToggleRepl<CR>
nnoremap <leader>du :lua require('dapui').toggle()<CR>
nnoremap <leader>de :lua require('dapui').eval()<CR>
nnoremap <leader>dv :Telescope dap variables<CR>
nnoremap <leader>df :Telescope dap frames<CR>
nnoremap <leader>dbb :Telescope dap list_breakpoints<CR>

" Snippets - priorizando coc.nvim
nnoremap <leader>us :UltiSnipsEdit<CR>

" Security Analysis
nnoremap <leader>sb :!bandit -r . -f txt --skip B101<CR>
nnoremap <leader>ss :!safety check --json \| jq '.'<CR>
nnoremap <leader>sm :!semgrep --config=p/security-audit . --json<CR>
nnoremap <leader>sr :!ruff check . --select=S --output-format=concise<CR>
nnoremap <leader>sq :copen<CR>

" tmux navigator
" nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
" nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
" nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
" nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" faster scrolling
nnoremap <M-j> 10<C-e>
nnoremap <M-k> 10<C-y>

" Split navegación y creación
nnoremap <leader>sph :split<CR>
nnoremap <leader>spv :vsplit<CR>

"vimux-jest-test
" nnoremap <Leader>jn :VimuxJestTestNearest<CR>
" nnoremap <Leader>jf :VimuxJestTestFile<CR>
" nnoremap <Leader>js :VimuxJestTestSuite<CR>


" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap surround to lowercase s so it does not add an empty space
xmap s <Plug>VSurround
" diagnostics
nnoremap <leader>P :let @*=expand("%")<CR>

" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>

" buffers
map <Leader>ob :Buffers<cr>

" keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <Leader>k :m .-2<CR>==
nnoremap <Leader>j :m .+1<CR>==

" git
nnoremap <Leader>G :G<cr>
nnoremap <Leader>gp :Gpush<cr>
nnoremap <Leader>gl :Gpull<cr>

" run current file
nnoremap <Leader>x :!python %<cr>
" Use <c-space> to trigger completion.


"if &filetype == "javascript" || &filetype == "python"
  "inoremap <c-space> <C-x><C-u>
"else
  inoremap <silent><expr> <c-space> coc#refresh()
"endif

" CMake Build and Test Suite (vim-dispatch)
" =========================================

nnoremap <Leader>ct :call CMakeBuildAndTest()<CR>
nnoremap <Leader>cb :call CMakeBuildOnly()<CR>
nnoremap <Leader>ctt :call CMakeTestsOnly()<CR>
nnoremap <Leader>cc :call CMakeClean()<CR>
nnoremap <Leader>cq :copen<CR>
nnoremap <Leader>cQ :cclose<CR>

" Funciones auxiliares
" ====================

function! CMakeBuildAndTest()
    call CMakePrepare()
    call CMakeEnsureBuildDir()
    echo '🔨 Building and running tests asynchronously...'
    Make
endfunction

function! CMakeBuildOnly()
    call CMakePrepare()
    call CMakeEnsureBuildDir()
    echo '🔨 Building project...'
    Dispatch cd build && cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -G "Unix Makefiles" .. && cmake --build .
endfunction

function! CMakeTestsOnly()
    echo '🧪 Running tests...'
    Dispatch cd build && ctest --output-on-failure --verbose
endfunction

function! CMakeClean()
    echo '🧹 Cleaning build directory...'
    Dispatch rm -rf build
    echo '✓ Cleaned'
endfunction


"/set splitright
function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "vsp term://zsh"

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>

" inoremap <expr> <CR> ParensIndent()

" function! ParensIndent()
"   let prev = col('.') - 1
"   let after = col('.')
"   let prevChar = matchstr(getline('.'), '\%' . prev . 'c.')
"   let afterChar = matchstr(getline('.'), '\%' . after . 'c.')
"   if (prevChar == '"' && afterChar == '"') ||
"\    (prevChar == "'" && afterChar == "'") ||
"\    (prevChar == "(" && afterChar == ")") ||
"\    (prevChar == "{" && afterChar == "}") ||
"\    (prevChar == "[" && afterChar == "]")
"     return "\<CR>\<ESC>O"
"   endif
  
"   return "\<CR>"
" endfunction

" inoremap <expr> <space> ParensSpacing()

" function! ParensSpacing()
"   let prev = col('.') - 1
"   let after = col('.')
"   let prevChar = matchstr(getline('.'), '\%' . prev . 'c.')
"   let afterChar = matchstr(getline('.'), '\%' . after . 'c.')
"   if (prevChar == '"' && afterChar == '"') ||
"\    (prevChar == "'" && afterChar == "'") ||
"\    (prevChar == "(" && afterChar == ")") ||
"\    (prevChar == "{" && afterChar == "}") ||
"\    (prevChar == "[" && afterChar == "]")
"     return "\<space>\<space>\<left>"
"   endif
  
"   return "\<space>"
" endfunction

" inoremap <expr> <BS> ParensRemoveSpacing()

" function! ParensRemoveSpacing()
"   let prev = col('.') - 1
"   let after = col('.')
"   let prevChar = matchstr(getline('.'), '\%' . prev . 'c.')
"   let afterChar = matchstr(getline('.'), '\%' . after . 'c.')

"   if (prevChar == '"' && afterChar == '"') ||
"\    (prevChar == "'" && afterChar == "'") ||
"\    (prevChar == "(" && afterChar == ")") ||
"\    (prevChar == "{" && afterChar == "}") ||
"\    (prevChar == "[" && afterChar == "]")
"     return "\<bs>\<right>\<bs>"
"   endif
  
"   if (prevChar == ' ' && afterChar == ' ')
"     let prev = col('.') - 2
"     let after = col('.') + 1
"     let prevChar = matchstr(getline('.'), '\%' . prev . 'c.')
"     let afterChar = matchstr(getline('.'), '\%' . after . 'c.')
"     if (prevChar == '"' && afterChar == '"') ||
"  \    (prevChar == "'" && afterChar == "'") ||
"  \    (prevChar == "(" && afterChar == ")") ||
"  \    (prevChar == "{" && afterChar == "}") ||
"  \    (prevChar == "[" && afterChar == "]")
"      return "\<bs>\<right>\<bs>"
"    endif
"  endif
  
"  return "\<bs>"
" endfunction

" inoremap { {}<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap ' ''<left>
" inoremap " ""<left>

" let curly = "}"
" inoremap <expr> } CheckNextParens(curly)

" let bracket = "]"
" inoremap <expr> ] CheckNextParens(bracket)

" let parens = ")"
" inoremap <expr> ) CheckNextParens(parens)

" let quote = "'"
" inoremap <expr> ' CheckNextQuote(quote)

" let dquote = '"'
" inoremap <expr> " CheckNextQuote(dquote)

" let bticks = '`'
" inoremap <expr> ` CheckNextQuote(bticks)

" function CheckNextQuote(c)
"   let after = col('.')
"  let afterChar = matchstr(getline('.'), '\%' . after . 'c.')
  
"   if (afterChar == a:c)
"     return "\<right>"
"   endif
"   if (afterChar == ' ' || afterChar == '' || afterChar == ')' || afterChar== '}' || afterChar == ']')
"     return a:c . a:c . "\<left>"
"   endif
"   if (afterChar != a:c)
"     let bticks = '`'
"     let dquote = '"'
"     let quote = "'"
"     if(afterChar == dquote || afterChar == quote || afterChar == bticks)
"       return a:c . a:c . "\<left>"
"     endif
"   endif
"   return a:c
" endfunction

" function CheckNextParens(c)
"   let after = col('.')
"   let afterChar = matchstr(getline('.'), '\%' . after . 'c.')
"   if (afterChar == a:c)

"     return "\<right>"
"   endif
"   return a:c
" endfunction
"/
