" cmake.vim - Compiler plugin for vim-dispatch + CMake + C++
" Location: ~/.config/nvim/compiler/cmake.vim
" Purpose: Integrates CMake build system with vim-dispatch

if exists("current_compiler")
  finish
endif
let current_compiler = "cmake"

" ============================================================
" Configuration Variables
" ============================================================

" Default build directory
if !exists("g:cmake_build_dir")
  let g:cmake_build_dir = "build"
endif

" Default generator (Unix Makefiles es estándar en Linux)
if !exists("g:cmake_generator")
  let g:cmake_generator = "Unix Makefiles"
endif

" ============================================================
" Error Format - Parsear errores de compilación
" ============================================================

CompilerSet errorformat=
    \%f:%l:%c:\ %trror:\ %m,
    \%f:%l:%c:\ %tarning:\ %m,
    \%f:%l:\ error:\ %m,
    \%f:%l:\ warning:\ %m,
    \%f:\ %m,
    \%-G%.%#

" ============================================================
" Main Build Command with CMake + CTest
" ============================================================

let &l:makeprg = 'cd ' . getcwd() . '/' . g:cmake_build_dir .
    \ ' && cmake -G "' . g:cmake_generator . '" ' .
    \ '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON .. &&' .
    \ ' cmake --build . &&' .
    \ ' ctest --output-on-failure --verbose'

" ============================================================
" Callbacks and Autocommands
" ============================================================

augroup cmake_dispatch
    autocmd!

    " Después de que termina make
    autocmd QuickFixCmdPost [^l]* call CMakeBuildFinished()
augroup END

" ============================================================
" Functions
" ============================================================

function! CMakeBuildFinished()
    let errors = getqflist()

    if len(errors) > 0
        " Hay errores de compilación
        call CMakeShowErrors(errors)
    else
        " Build y tests exitosos
        call CMakeBuildSuccess()
    endif
endfunction

function! CMakeShowErrors(errors)
    " Abrir quickfix automáticamente
    copen

    " Contar tipos de errores
    let error_count = len(filter(copy(a:errors), 'v:val.type == "E"'))
    let warning_count = len(filter(copy(a:errors), 'v:val.type == "W"'))

    echo "❌ Build failed!"
    echo printf("   Errors: %d | Warnings: %d", error_count, warning_count)
    echo ""
    echo "Usa :cnext y :cprev para navegar errores"
endfunction

function! CMakeBuildSuccess()
    echo "✓ Build completed successfully!"
    echo "✓ All tests passed!"
endfunction

" ============================================================
" Helper: Crear directorio build si no existe
" ============================================================

function! CMakeEnsureBuildDir()
    let build_dir = getcwd() . '/' . g:cmake_build_dir
    if !isdirectory(build_dir)
        call mkdir(build_dir, 'p')
        echo '📁 Created build directory: ' . build_dir
    endif
endfunction
