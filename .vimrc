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

set encoding=utf8

nnoremap <Leader>th :tabprevious<CR>
nnoremap <Leader>tn :tabnext<CR>

"""""""""""
" Plugins "
"""""""""""
call plug#begin('~/.vim/bundle/')

" vim-sensible - default settings for vim
" https://github.com/tpope/vim-sensible#sensiblevim
Plug 'tpope/vim-sensible'

" other sensible defaults that I've always had

" 2 space tabs
set tabstop=2
set shiftwidth=2

" turn on line numbers
set number
" line number color
hi LineNr ctermfg=darkgrey
set breakindent showbreak=┕→
set linebreak
syntax on

"=======================

" neovim-sensible - default settings for neovim
" https://github.com/jeffkreeftmeijer/neovim-sensible#features
Plug 'jeffkreeftmeijer/neovim-sensible'

" overriding what I don't think is so sensible
set clipboard=unnamedplus

"=======================

" vim-sleuth - automatically adjusts 'shiftwidth' and 'expandtab'
" heuristically based on the current file.
" https://github.com/tpope/vim-sleuth#notes
Plug 'tpope/vim-sleuth'

"=======================

" vim-surround - provides mappings to easily delete, change and 
" add such surroundings in pairs.
" https://github.com/tpope/vim-surround#surroundvim
Plug 'tpope/vim-surround'

"=======================

" vim-repeat - remaps `.` in a way that plugins can tap into it.
" https://github.com/tpope/vim-repeat#repeatvim
Plug 'tpope/vim-repeat'

"=======================

" vim-dispatch - run multiple terminal commands in parallel
" https://github.com/tpope/vim-dispatch#dispatchvim
Plug 'tpope/vim-dispatch'

"=======================

" vim-dispatch-neovim - adds support for neovim's terminal emulator to
" vim-dispatch
" https://github.com/radenling/vim-dispatch-neovim#dispatch-neovim
Plug 'radenling/vim-dispatch-neovim'

"=======================

" vim-signify - adds git highlighting to the line number
" https://github.com/mhinz/vim-signify
Plug 'mhinz/vim-signify'

"=======================

" fern.vim - a file explorer/project drawer
" https://github.com/lambdalisue/fern.vim
Plug 'lambdalisue/fern.vim'

" hotkeys for fern
nmap <C-t><C-n> :Fern . -drawer -reveal=%<CR>

" show hidden files by default
let g:fern#default_hidden=1

" customization for fern
function! s:init_fern() abort
  " map enter to expand or open file
  nmap <buffer> <Plug>(fern-action-open-or-enter) <Plug>(fern-action-open-or-expand)
  nmap <buffer> md <Plug>(fern-action-remove)
  nmap <buffer> mm <Plug>(fern-action-rename)
  nmap <buffer> mad <Plug>(fern-action-new-dir)
  nmap <buffer> maf <Plug>(fern-action-new-file)
  nmap <buffer> map <Plug>(fern-action-new-path)
  nmap <buffer> T <Plug>(fern-action-open:tabedit)
  nmap <buffer> t <Up>
  nmap <buffer> <C-t><C-n> :q<CR>
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

" fern-renderer-nerdfont.vim - tree view
Plug 'lambdalisue/fern-renderer-nerdfont.vim'


" FixCursorHold.nvim - Fix CursorHold Performance. suggested by Fern
Plug 'antoinemadec/FixCursorHold.nvim'

"=======================

" vim-choosewin - quickly and easily change what window you're viewing within
" the current buffer
" https://github.com/t9md/vim-choosewin
Plug 't9md/vim-choosewin'

nmap  <Leader>cw  <Plug>(choosewin)
nmap  <Leader>cwt  <Plug>(choosewin)]<CR>
nmap  <Leader>cwT  <Plug>(choosewin)[<CR>

"=======================

" TODO: check differences between deoplete and coc
" coc.nvim - supercharge with full IDE power
" https://github.com/neoclide/coc.nvim
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" deoplete - autocompletion
" https://github.com/Shougo/deoplete.nvim
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"let g:deoplete#enable_at_startup = 1

"=======================

" vim-visual-multi - multiple cursors
" https://github.com/mg979/vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Pretty sure these are fixes for neovim
 function! Multiple_cursors_before()
   if exists(':NeoCompleteLock')==2
     exe 'NeoCompleteLock'
   endif
 endfunction
 
 function! Multiple_cursors_after()
   if exists(':NeoCompleteUnlock')==2
     exe 'NeoCompleteUnlock'
   endif
endfunction

"=======================

" vim-esearch - easy async search and replace across multiple files.
" Default mappings cheatsheet:

" | Keymap                | What it does                                          |
" | --------------------- | ----------------------------------------------------- |
" | `<leader>ff`          | Open the search pattern **input prompt** _[global]_   |
" | `<leader>f{textobj}`  | Start a new **search for a text-object** _[global]_   |
" | `J` / `K`             | Jump to the next/previous **search entry** _[window]_ |
" | `{` / `}`             | Jump to the next/previous **filename** _[window]_     |
" | `cim`                 | Jump to the **next match** and change it _[window]_   |
" | `dim`                 | Jump to the **next match** and delete it _[window]_   |
" | `vim`                 | Jump to the **next match** and select it _[window]_   |
" | `:write<cr>`          | **Write** changes into files _[window]_               |
" https://github.com/eugen0329/vim-esearch
Plug 'eugen0329/vim-esearch'

"=======================

" TODO: revisit if I want these
" Plug 'itchyny/lightline.vim'
" Plug 'taohex/lightline-buffer'

"=======================

" vim-commentary - for commenting and uncommenting
" https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

"=======================

" auto-pairs - to autocomplete brackets, quotes, etc
" https://github.com/jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'

"=======================

" ultisnips - a snippet engine for vim
" https://github.com/SirVer/ultisnips
"Plug 'SirVer/ultisnips'

"let g:UltiSnipsExpandTrigger='<tab>'
"let g:UltiSnipsJumpForwardTrigger='<c-b>'
"let g:UltiSnipsJumpBackwardTrigger='<c-z>'
 
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit='vertical'

"=======================

" vim-snippets - snippets for the snippet engine to use
" https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'

"=======================

" vim-mark - highlight matches to the word under the cursor
" https://github.com/inkarkat/vim-mark
Plug 'inkarkat/vim-mark'

"=======================

" vim-javascript - vastly improved javascript syntax highlighting
" https://github.com/pangloss/vim-javascript
Plug 'pangloss/vim-javascript'

"Enables syntax highlighting for JSDocs.
let g:javascript_plugin_jsdoc = 1

" fold at indents
set foldmethod=indent
" turn on concealers
set conceallevel=1
" quickly toggle conceal
map <leader>ccl :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

" conceal characters
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
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"

"=======================

" ale - Asynchronous Lint Engine
" https://github.com/dense-analysis/ale
Plug 'dense-analysis/ale'

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 0

" Keep the sign gutter open for ale (prevents jumping around)
let g:ale_sign_column_always = 1

let g:ale_sign_error = '××'
let g:ale_sign_warning = '☼☼'


" jumping between errors
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)
"
" nmap <Leader>lo :lopen<CR>      " open location window
" nmap <Leader>lc :lclose<CR>     " close location window
" nmap <Leader>l, :ll<CR>         " go to current error/warning
" nmap <Leader>ln :lnext<CR>      " next error/warning
" nmap <Leader>lp :lprev<CR>      " previous error/warning
" 
" set noshowmode

"=======================

" matchtag - highlights the matching HTML tag when the cursor is positioned on a tag.
" https://github.com/gregsexton/MatchTag
Plug 'gregsexton/matchtag'

"=======================

" vim-matchup - extends the `%` command
" https://github.com/andymass/vim-matchup
Plug 'andymass/vim-matchup'

"=======================

" emmet-vim - supercharge html development
" https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'

let g:user_emmet_leader_key='<C-<CR>>'

"=======================

" vim-indent-guides - indentation highlighting
" https://github.com/nathanaelkane/vim-indent-guides
Plug 'nathanaelkane/vim-indent-guides', { 'for' : 'python' }

"=======================

" jedi-vim - awesome Python autocompletion with VIM
" https://github.com/davidhalter/jedi-vim
Plug 'davidhalter/jedi-vim', { 'for' : 'python' }

"=======================

" deoplete-jedi - deoplete for jedi
" https://github.com/deoplete-plugins/deoplete-jedi
Plug 'deoplete-plugins/deoplete-jedi', { 'for' : 'python' }

"=======================

" vim-node - Tools to make Vim superb for developing with Node.js
" https://github.com/moll/vim-node
Plug 'moll/vim-node'

"=======================

" vim-jsx-typescript - jsx highlighting in tsx files
" https://github.com/peitalin/vim-jsx-typescript
Plug 'peitalin/vim-jsx-typescript'

" typescript-vim - Syntax file and other settings for TypeScript
" https://github.com/leafgarland/typescript-vim
Plug 'leafgarland/typescript-vim'

"=======================
"

" vim-prettier - A vim plugin wrapper for prettier
" https://github.com/prettier/vim-prettier
Plug 'prettier/vim-prettier', { 
\  'do': 'yarn install', 
\  'branch': 'release/0.x',
\  'for': [
\    'javascript', 
\    'typescript', 
\    'css', 
\    'less', 
\    'scss', 
\    'json', 
\    'graphql', 
\    'vue', 
\    'yaml', 
\    'html'
\  ] 
\}
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"=======================
"

" vim-markdown - A vim plugin for editing markdown files
" https://github.com/gabrielelana/vim-markdown
Plug 'gabrielelana/vim-markdown', { 'for': ['markdown'] }


"=======================
"

" vim-gutentags - tag management for vim
" https://github.com/ludovicchabant/vim-gutentags
Plug 'ludovicchabant/vim-gutentags'

"=======================
"

" fzf - vim fuzzy finder
" https://github.com/junegunn/fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"=======================
"


call plug#end()            " required

filetype plugin indent on    " required
