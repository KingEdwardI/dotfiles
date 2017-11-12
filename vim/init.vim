" Config

set tabstop=2
set shiftwidth=2
" 4 space tabs for cc
:autocmd BufRead,BufNewFile,BufEnter /Users/KingEdward/codecraft/* setlocal ts=4 sw=4
set expandtab
" turn on the mouse
set mouse=a                     
" turn on line numbers
set number                      
" line number color
hi LineNr ctermfg=darkgrey      
set breakindent showbreak=┕-→
set linebreak
syntax on

" Remap hjkl movement keys for Dvorak Keyboard
map h <Left>
map t <Up>
map T 8<Up>
map n <Down>
map N 8<Down>
map s <Right>
inoremap hh <ESC>

" jump instead of next
no j n      
no J N
" end of line
no - $
" beginning of line      
no _ ^      
" kill line (wrap up)
no k J

map bt :bnext<CR>
map bT :bprevious<CR>

let g:mapleader=','

colorscheme jellybeans
let g:jellybeans_overrides = { 'background': { 'guibg': '111111' }, }


" JSON fix current file
command! JSONfix execute "%!python -m json.tool"

" HTML fix current file
command! HTMLfix execute "!tidy -mi -html -wrap 0 %"

nmap <F8> :TagbarToggle<CR>

set encoding=utf8

""""""""""""
" Vim-Plug "
""""""""""""
call plug#begin('~/.vim/bundle/')

" Global
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'
" Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'lambdalisue/gina.vim'
Plug 'majutsushi/tagbar'
Plug 'craigemery/vim-autotag'
Plug 'wesQ3/vim-windowswap'
Plug 't9md/vim-choosewin'
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'mtth/scratch.vim'
Plug 'eugen0329/vim-esearch'
Plug 'vim-scripts/bufkill.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'
Plug 'ryanoasis/vim-devicons'
Plug 'dkprice/vim-easygrep'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'zchee/deoplete-go'

" Syntax
Plug 'ihacklog/hicursorwords'
Plug 'shougo/deoplete.nvim'
Plug 'pangloss/vim-javascript'
Plug 'mustache/vim-mustache-handlebars'

" UI
Plug 'itchyny/lightline.vim'
Plug 'taohex/lightline-buffer'

" General Programming
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'

" Linting
Plug 'w0rp/ale'

" HTML
Plug 'gregsexton/matchtag'
Plug 'othree/html5.vim', { 'for' : 'html'}
Plug 'mattn/emmet-vim'

" Python
Plug 'nathanaelkane/vim-indent-guides', { 'for' : 'python' }
Plug 'zchee/deoplete-jedi', { 'for' : 'python' }
Plug 'davidhalter/jedi-vim', { 'for' : 'python' }

" JavaScript
Plug 'ternjs/tern_for_vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'moll/vim-node', { 'for' : 'javascript' }
Plug 'digitaltoad/vim-pug', { 'for' : 'pug' }
Plug 'posva/vim-vue', { 'for' : [ 'javascript', 'vue' ] }
Plug 'mxw/vim-jsx', { 'for' : [ 'javascript', 'javascript.jsx' ] }

call plug#end()            " required

filetype plugin indent on    " required

"""""""""""""
" NERD Tree "
"""""""""""""
" open on enter
autocmd vimenter * NERDTree
" show hidden files
let g:NERDTreeShowHidden=1
" toggle menu
map <C-t><C-n> :NERDTreeToggle<CR>
" close vim if menu is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" File Highligting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('pug', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('json', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('jsx', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('py', 'Magenta', 'none', '#ff00ff', '#151515')

""""""""""
" Tagbar "
""""""""""
map <C-m> :TagbarToggle<CR>

""""""""""""""""""
" NERD Commenter "
""""""""""""""""""
let g:NERDSpaceDelims = 1

""""""""
" Gina "
""""""""
map <Leader>gs :Gina status<CR>
map <Leader>gc :Gina commit<CR>
map <Leader>gAA :Gina add -A<CR>
map <Leader>gb :Gina branch<CR>
" just set up the command to specify branch
map <Leader>gp :Gina pull 
map <Leader>gP :Gina push 
" quick commands for common branches
map <Leader>gped :Gina push origin eddie-dev<CR>
map <Leader>gpom :Gina push origin master<CR>
map <Leader>gd :Gina diff<CR>
map <Leader>gl :Gina log<CR>
map <Leader>gsh :Gina stash<CR>

"""""""""""""
" LightLine "
"""""""""""""
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

set hidden  " allow buffer switching without saving
set showtabline=2  " always show tabline

map bd :BD<CR>

" lightline-buffer ui settings
" replace these symbols with ascii characters if your environment does not support unicode
let g:lightline_buffer_logo = ' '
let g:lightline_buffer_readonly_icon = 'Ꮬ'
let g:lightline_buffer_modified_icon = '✭'
let g:lightline_buffer_git_icon = 'Ѫ'
let g:lightline_buffer_ellipsis_icon = '⋯'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = ' '

" lightline-buffer function settings
let g:lightline_buffer_show_bufnr = 1
let g:lightline_buffer_rotate = 0
let g:lightline_buffer_fname_mod = ':t'
let g:lightline_buffer_excludes = ['vimfiler']

let g:lightline_buffer_maxflen = 30
let g:lightline_buffer_maxfextlen = 3
let g:lightline_buffer_minflen = 16
let g:lightline_buffer_minfextlen = 3
let g:lightline_buffer_reservelen = 20

map <leader>er :lnext<CR>
map <leader>eR :lprev<CR>

let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

""""""""""""
" Deoplete "
""""""""""""
call deoplete#enable()
" g:deoplete#enable_at_startup = 1
let g:python3_host_prog  = '/usr/local/bin/python3'

"""""""""
" Emmet "
"""""""""
let g:user_emmet_leader_key='<C-e>'


" Higligting
    " syntax errors
hi clear SpellBad 
hi SpellBad cterm=underline,bold ctermfg=red

"""""""
" ALE "
"""""""
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_fix_on_save = 1

let g:ale_sign_error = '××'
let g:ale_sign_warning = '☼☼'

nmap <Leader>lo :lopen<CR>      " open location window
nmap <Leader>lc :lclose<CR>     " close location window
nmap <Leader>l, :ll<CR>         " go to current error/warning
nmap <Leader>ln :lnext<CR>      " next error/warning
nmap <Leader>lp :lprev<CR>      " previous error/warning

set noshowmode

" vim-javascript
set foldmethod=indent
set conceallevel=1
map <leader>ccl :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
let g:javascript_conceal_function       = 'ƒ'
let g:javascript_conceal_null           = 'ø'
let g:javascript_conceal_this           = '㈦'
let g:javascript_conceal_return         = '⇚'
let g:javascript_conceal_undefined      = '¿'
let g:javascript_conceal_NaN            = 'ℕ'
let g:javascript_conceal_prototype      = '¶'
let g:javascript_conceal_static         = '•'
let g:javascript_conceal_super          = 'Ω'
let g:javascript_conceal_arrow_function = '⇒'
let g:javascript_conceal_async = '%'

" by using the :r command, long hotkeys, and a snippets folder we can insert
" repeated text easily
map <Leader>html :r~/.vim/snippets/html5.html<CR>
map <Leader>jsfor :r~/.vim/snippets/for.js<CR>
map <Leader>vwp :r~/.vim/snippets/vue_webpack_boilerplate.vue<CR>
map <Leader>vsf :r~/.vim/snippets/vue_single_file.vue<CR>
map <Leader>mr :r~/.vim/snippets/mongoErr.mongo<CR>


nnoremap <Leader>th :tabprevious<CR>
nnoremap <Leader>tn :tabnext<CR>

""""""""""""""
" BufferLine "
""""""""""""""

let g:bufferline_echo = 0

"""""""""""""
" ChooseWin "
"""""""""""""
nmap  <Leader>cw  <Plug>(choosewin)
nmap  <Leader>cwt  <Plug>(choosewin)]<CR>
nmap  <Leader>cwT  <Plug>(choosewin)[<CR>

""""""""""""""
" NeoSnippet "
""""""""""""""
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" For conceal markers.
if has('conceal')
  set conceallevel=1 concealcursor=niv
endif

"""""""""""""
" Ultisnips "
"""""""""""""
" Trigger configuration.
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit='vertical'

"""""""
" FZF "
"""""""
set rtp+=/usr/local/opt/fzf

""""""""""""
" Devicons "
""""""""""""
set guifont=Sauce_Code_Powerline:h11
" change the default character when no match found
" let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
" " set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" " disabled by default with no value
" let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''
" " enable folder/directory glyph flag (disabled by default with 0)
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" " enable open and close folder/directory glyph flags (disabled by default with 0)
" let g:DevIconsEnableFoldersOpenClose = 1
" " enable pattern matching glyphs on folder/directory (enabled by default with 1)
" let g:DevIconsEnableFolderPatternMatching = 1
" " enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
" let g:DevIconsEnableFolderExtensionPatternMatching = 0
" " enable custom folder/directory glyph exact matching 
" " (enabled by default when g:WebDevIconsUnicodeDecorateFolderNodes is set to 1)
" let g:WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
" " change the default folder/directory glyph/icon
" let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = 'ƛ'
" " change the default open folder/directory glyph/icon (default is '')
" let g:DevIconsDefaultFolderOpenSymbol = 'ƛ'
" " change the default dictionary mappings for file extension matches

" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'
" " change the default dictionary mappings for exact file node matches

" let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
" " add or override individual additional filetypes

" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'
" " add or override pattern matches for filetypes
" " these take precedence over the file extensions

" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'

let g:lightline = {
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
""""""""""""""""""""""""
" Vim Multiple Cursors "
""""""""""""""""""""""""
" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
