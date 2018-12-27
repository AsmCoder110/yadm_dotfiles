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
set autoread                          " have vim re-load files when they're changed outside of vim
set exrc                              " Allow external vimrcs--
set secure                            " -- with secure commands.
set shiftwidth=4                      " 4 spaces for tabs.
set ttyfast                           " Why not?

" Load and save views before writing/reading a buffer to a file.
au BufWrite * silent! mkview
au BufRead * silent! loadview

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * silent! %s/\s\+$//e

" Turn on 24-bit colors if available.
if (has("termguicolors"))
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
    set termguicolors
endif

set background=dark


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""SHORTCUTS"""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Space as the leader key.
let mapleader =" "

" 'Cause screw pressing C-w twice.
nnoremap <leader><leader> <C-w><C-w>

" Because why not?
inoremap <esc> <esc><esc>

" highlight last inserted text
nnoremap gV `[v`]

" Copy paste text from the system's clipboard using <leader>[y|p].
vnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P

" Edit vimrc using <leader>e.
nnoremap <leader>e :e ~/.vimrc<CR>

" Edit init.vim using <leader>ne
nnoremap <leader>ne :e ~/.config/nvim/init.vim<CR>

" Auto reload the vimrcs.
autocmd! bufwritepost ~/.vimrc source ~/.vimrc
autocmd! bufwritepost ~/.gvimrc source ~/.gvimrc
autocmd! bufwritepost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim


" Switch to next buffer using <leader>>
nnoremap <leader>> :bn<CR>

" Switch to previous buffer using <leader><
nnoremap <leader>< :bp<CR>

" Save files using <C-j><C-s>
nnoremap <C-j><C-s> :w<CR>

" Delete buffer
nnoremap <leader>d :bd<CR>

" vim-surround is nice, but this is faster!
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc

" Convenience on the command line.
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""MINPAC""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

packadd minpac
call minpac#init()

call minpac#add("tpope/vim-characterize")
call minpac#add("tpope/vim-commentary")
call minpac#add("tpope/vim-eunuch")
call minpac#add("tpope/vim-fugitive")
call minpac#add("tpope/vim-obsession")
call minpac#add("tpope/vim-repeat")
call minpac#add("tpope/vim-rsi")
call minpac#add("tpope/vim-sensible")
call minpac#add("tpope/vim-surround")
call minpac#add("tpope/vim-unimpaired")
call minpac#add("tpope/vim-vinegar")
call minpac#add("junegunn/fzf.vim")
call minpac#add("machakann/vim-highlightedyank")
call minpac#add("jiangmiao/auto-pairs")
call minpac#add("Shougo/deoplete.nvim")
call minpac#add("roxma/nvim-yarp")
call minpac#add("roxma/vim-hug-neovim-rpc")
call minpac#add("mbbill/undotree")
call minpac#add("SirVer/ultisnips")
call minpac#add("honza/vim-snippets")
call minpac#add("ncm2/ncm2")
call minpac#add("ncm2/ncm2-bufword")
call minpac#add("ncm2/ncm2-tmux")
call minpac#add("ncm2/ncm2-path")
call minpac#add("ncm2/ncm2-ultisnips")
call minpac#add("easymotion/vim-easymotion")
call minpac#add("rhysd/committia.vim")

" Optional plug-ins
call minpac#add("autozimu/LanguageClient-neovim", {'type' : 'opt'})
call minpac#add("drewtempelmeyer/palenight.vim", {'type' : 'opt'})
call minpac#add("tpope/vim-scriptease", {'type' : 'opt'})
call minpac#add("k-takata/minpac", {'type' : 'opt'})

command! PackClean call minpac#clean()
command! PackStatus call minpac#status()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""CUSTOM""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" custom theme.
packadd! palenight.vim
colors palenight

" Activate italics.
let g:palenight_terminal_italics=1

" Make themes transparent.
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

""" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_refresh_delay = 1
let g:deoplete#num_processes = 15

""" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Want :UltiSnipsEdit to split window.
let g:UltiSnipsEditSplit="vertical"

""" ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Keybindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <C-j><C-p> :call minpac#update()<CR>

"""""""""""""""""""""""" FZF """""""""""""""""""""""""""""""""""
" Browse files
nnoremap <C-j><C-f> :FZF<CR>

" List buffers.
nnoremap <C-j><C-b> :Buffers<CR>

" List Command line history.
nnoremap <C-j><C-c> :History:<CR>

" List history of files opened.
nnoremap <C-j><C-h> :History<CR>

"""""""""""""""""""""""" Easymotion """""""""""""""""""""""""""""""""""

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


""" NCM2
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

""" UndoTree bindings
nnoremap <Leader>U :UndotreeToggle<CR>
