set runtimepath^=~/.vim runtimepath+=~/.vim/after  " Add .vim to nvim's runtime path.
let &packpath=&runtimepath                  " Plugins loaded by the packages  are available to neovim.
so ~/.vimrc

let $NVIM_TUI_ENABLE_TRUE_COLOR=1  " Turn on 24 bit colors.
set inccommand=nosplit             " Show effects of substitue incrementally.

tnoremap <Esc> <C-\><C-n>
tnoremap <A-[> <Esc>
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>

set wildoptions=pum
set pumblend=40
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""MINPAC""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call minpac#add("kassio/neoterm")
