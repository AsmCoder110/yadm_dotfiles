let g:ale_c_parse_compile_commands=1
let g:ale_cpp_gcc_options='-std=c++2a -Wall -Wextra -Wshadow -Wnon-virtual-dtor
            \ -pedantic -Wold-style-cast -Wcast-align -Wunused
            \ -Woverloaded-virtual -Wpedantic -Wconversion -Wsign-conversion
            \ -Wmisleading-indentation -Wduplicated-cond -Wduplicated-branches
            \ -Wlogical-op -Wnull-dereference -Wuseless-cast
            \ -Wdouble-promotion -Wformat=2 -Wno-c++98-compat
            \ -Wno-c++98-compat-pedantic -Weffc++'
let g:ale_c_gcc_options='-std=c11 -Wall -Wextra -Wshadow -Wpedantic'
let g:ale_cpp_clang_options='-std=c++2a -Weverything -Wall -Wextra -Wshadow -Wnon-virtual-dtor
            \ -pedantic -Wold-style-cast -Wcast-align -Wunused
            \ -Woverload-virtual -Wpedantic -Wconversion -Wsign-conversion
            \ -Wmisleading-indentation -Wduplicated-cond -Wduplicated-branches
            \ -Wlogical-op -Wnull-dereference -Wuseless-cast
            \ -Wdouble-promotion -Wformat=2 -Wno-c++98-compat
            \ -Wno-c++98-compat-pedantic -Weffc++'
let g:ale_c_clang_options='-std=c11 -Wall -Wextra -Wshadow -Wpedantic -Weverything'
let g:ale_cpp_clangtidy_checks=['abseil-*,readability-*,modernize-*,cppcoreguidelines-*,hicpp-*,performance-*,clang-analyzer-*,bugprone-*,cert-*,misc-*']
let g:ale_linters = {'c': ['gcc','clangtidy', 'flawfinder','clang'],
            \ 'cpp': ['gcc','flawfinder', 'clangtidy','clang'],
                        \ 'rust' :['cargo', 'rls', 'rustc'],
                        \'python': ['mypy', 'pyls'],
                        \ 'cmake' : ['cmakelint'],
                       \ }
