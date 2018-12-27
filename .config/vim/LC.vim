" Load lsp server when loading a file of known extension.
 packadd LanguageClient-neovim
 set completefunc=LanguageClient#complete
 setl formatexpr=LanguageClient_textDocument_rangeFormatting()

let g:LanguageClient_serverCommands = {
    \ 'c' : ['ccls', '--log-file=/tmp/cc.log'],
    \ 'cpp' : ['ccls', '--log-file=/tmp/cq.log']
    \ }

let g:LanguageClient_loadSettings = 1 " Use an absolute configuration path if you want system-wide settings
let g:LanguageClient_settingsPath = '/home/asmcoder/dotfiles/ccls_settings.json'

""""""""""""""""""""""""""""""Keybindings"""""""""""""""""""""""
nnoremap <silent> K     :call LanguageClient#textDocument_hover()                                       <CR>
nnoremap <silent> gd    :call LanguageClient#textDocument_definition()                                  <CR>
nnoremap <silent> <F2>  :call LanguageClient#textDocument_rename()                                      <CR>
nnoremap <silent> <C-,> :call LanguageClient#textDocument_references({'includeDeclaration': v:false})   <CR>

nnoremap <silent> xh    :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'L'}) <CR>
nnoremap <silent> xj    :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'D'}) <CR>
nnoremap <silent> xk    :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'U'}) <CR>
nnoremap <silent> xl    :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'R'}) <CR>

" caller
nnoremap <silent> xc    :call LanguageClient#findLocations({'method':'$ccls/call'})                     <CR>
" oremapcallee
nnoremap <silent> xC    :call LanguageClient#findLocations({'method':'$ccls/call','callee':v:true})     <CR>

" oremap$ccls/member
" oremapnested classes / types in a namespace
nnoremap <silent> xs    :call LanguageClient#findLocations({'method':'$ccls/member','kind':2})          <CR>
" oremapmember functions / functions in a namespace
nnoremap <silent> xf    :call LanguageClient#findLocations({'method':'$ccls/member','kind':3})          <CR>
" oremapmember variables / variables in a namespace
nnoremap <silent> xm    :call LanguageClient#findLocations({'method':'$ccls/member'})                   <CR>

nn xx x
if !get(g:,  'LanguageClient_loaded')
LanguageClientStart
endif

