syntax enable
syntax on
filetype plugin on                    " Turn of file type plugin.

set number relativenumber
set linebreak                         " Wrap long lines--
set showbreak=<<<                     " -- using this symbol.
set showmatch                         " Briefly jump to the matching bracket.
set ignorecase                        " Ignore cases in the search patterns,--
set smartcase                         " -- Unless given an upper case pattern to match.
set incsearch                         " Show matches while typing.
set autoindent                        " Follow indentation of the previous line.
set expandtab                         " expand tabs to spaces.
set tabstop=4                         " Tab expands to four spaces.
set undolevels=1000000                " Can't have enough undos.
set undofile                          " Save undo history to a file,--
set undodir=/home/asmcoder/.vim/undo  " -- in this directory.
set backspace=indent,eol,start        " Backspace over autoindents, line breaks, start of insert.
set splitbelow splitright             " Split windows below and to the right by default.
set hidden                            " Hide buffer, don't close them.
set noswapfile                        " Allow buffers to be edited from other instances of vim and--
set autoread                          " -- have vim re-load files when they're changed elsewhere.
set exrc                              " Allow external vimrcs--
set secure                            " -- with secure commands.
set shiftwidth=4                      " 4 spaces for tabs.
set ttyfast                           " Why not?
set cursorline                        " Show cursor line.

" Load and save views before writing/reading a buffer to a file.
au BufWrite * silent! mkview
au BufRead * silent! loadview

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * silent! %s/\s\+$//e

" Use 24-bit colors.
set termguicolors

set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""SHORTCUTS"""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Space as the leader key.
let mapleader =" "
" Kanji search in wdic from the open file
map <leader>ks :!kitty @ send-text --match title:Output @* \\x0D<CR>

" Send the selected text to kanji.log
map <leader>kS v}:w>>/home/asmcoder/kanji.log<CR><CR>

"" 'Cause screw pressing C-w twice.
nnoremap <space><space> <C-w><C-w>

" Jump to matching parens using tab.
nnoremap <tab> %

" Because why not?
inoremap <esc> <esc><esc>

" highlight last inserted text
nnoremap gV `[v`]

" Copy paste text from the system's clipboard using <leader>[y|p].
map <leader>y "+y
map <leader>p "+p
map <leader>P "+P

" Edit vimrc using <leader>e.
nnoremap <leader>e :e ~/.vimrc<CR>

" Edit init.vim using <leader>ne
nnoremap <leader>ne :e ~/.config/nvim/init.vim<CR>

" Auto reload the vimrcs.
autocmd! bufwritepost ~/.vimrc source ~/.vimrc
autocmd! bufwritepost ~/.gvimrc source ~/.gvimrc
autocmd! bufwritepost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim

" Save files using <C-j><C-s>
noremap <C-j><C-s> :w<CR>
inoremap <C-j><C-s> <C-o>:w<CR>

" Delete buffer
nnoremap <leader>d :bd<CR>

" vim-surround is nice, but this is faster!
vnoremap %1 <esc>`>a)<esc>`<i(<esc>
vnoremap %2 <esc>`>a]<esc>`<i[<esc>
vnoremap %3 <esc>`>a}<esc>`<i{<esc>
vnoremap %$ <esc>`>a"<esc>`<i"<esc>
vnoremap %q <esc>`>a'<esc>`<i'<esc>
vnoremap %e <esc>`>a"<esc>`<i"<esc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""MINPAC""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

packadd minpac
call minpac#init()

call minpac#add("tpope/vim-commentary")
call minpac#add("tpope/vim-obsession")
call minpac#add("tpope/vim-repeat")
call minpac#add("tpope/vim-rsi")
call minpac#add("tpope/vim-surround")
call minpac#add("tpope/vim-unimpaired")
call minpac#add("tpope/vim-vinegar")
call minpac#add("junegunn/fzf.vim")
call minpac#add("SirVer/ultisnips")
call minpac#add("machakann/vim-highlightedyank")
call minpac#add("jiangmiao/auto-pairs")
call minpac#add("mbbill/undotree")
call minpac#add("rhysd/committia.vim")
call minpac#add("honza/vim-snippets")
call minpac#add("luochen1990/rainbow")
call minpac#add("airblade/vim-rooter")
call minpac#add("neoclide/coc.nvim")
call minpac#add("skywind3000/asyncrun.vim")

" Optional plug-ins
call minpac#add("tpope/vim-characterize",{'type':'opt'})
call minpac#add("lervag/vimtex",{'type':'opt'})
call minpac#add("KeitaNakamura/tex-conceal.vim",{'type':'opt'})
call minpac#add("tpope/vim-fugitive",{'type':'opt'})
call minpac#add("tikhomirov/vim-glsl",{'type':'opt'})
call minpac#add("drewtempelmeyer/palenight.vim", {'type': 'opt'})
call minpac#add("jpalardy/vim-slime", {'type': 'opt'})
call minpac#add("vhdirk/vim-cmake", {'type': 'opt'})
call minpac#add("udalov/kotlin-vim", {'type' : 'opt'})
call minpac#add("pangloss/vim-javascript", {'type' : 'opt'})
call minpac#add("mxw/vim-jsx", {'type' : 'opt'})
call minpac#add("yuttie/hydrangea-vim", {'type' : 'opt'})
call minpac#add("w0rp/ale", {'type': 'opt'})
call minpac#add("mattn/emmet-vim", {'type': 'opt'})
call minpac#add("morhetz/gruvbox", {'type': 'opt'})
call minpac#add("tpope/vim-scriptease", {'type' : 'opt'})
call minpac#add("k-takata/minpac", {'type' : 'opt'})

command! PackClean call minpac#clean()
command! PackStatus call minpac#status()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""CUSTOM""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Activate italics.
let g:palenight_terminal_italics=1

" custom theme.
packadd! palenight.vim
colors palenight

" Rainbow parentheses
let g:rainbow_active=1

" Make themes transparent.
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

""""""
" Latex
"
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_view_method='zathura'
set conceallevel=1
let g:tex_conceal='abdmg'

""
" Ultisnips directory
" Want :UltiSnipsEdit to split window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[ "/home/asmcoder/.config/UltiSnips/", "UltiSnips" ]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Keybindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ALE keymaps
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" Update Packages.
nnoremap <C-j><C-p> :call minpac#update()<CR>

"""""""""""""""""""""""" Vim Surround """""""""""""""""""""""""""""""""""

" Select till the last word and ask to surround that.
nmap <leader>v v$hS

"""""""""""""""""""""""" Nman """""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>m :silent execute "Vnman ". expand("<cword>")<CR>

"""""""""""""""""""""""" Tabs """""""""""""""""""""""""""""""""""

" Ctrl-k to look up words under the cursor (previously bound to 'K').
noremap <c-k> :execute "tab h " . expand("<cword>")<cr>

"""""""""""""""""""""""" FZF """""""""""""""""""""""""""""""""""
" Browse files
nnoremap <C-j><C-f> :FZF<CR>

" List buffers.
nnoremap <C-j><C-b> :Buffers<CR>

" List Command line history.
nnoremap <C-j><C-m> :History:<CR>

" List history of files opened.
nnoremap <C-j><C-i> :History<CR>

""" Ultisnips
let g:UltiSnipsExpandTrigger             = "<tab>"
let g:UltiSnipsJumpForwardTrigger        = "<tab>"
let g:UltiSnipsJumpBackwardTrigger       = "<c-z>"
let g:UltiSnipsListSnippets              = "<c-tab>"
let g:UltisnipsRemoveSelectModeMappings  = 0

""" UndoTree bindings
nnoremap <Leader>U :UndotreeToggle<CR>
