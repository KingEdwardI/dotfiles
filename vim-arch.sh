# install vim and dependencies
sudo pacman -S vim curl

# make directories
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle
mkdir ~/.vim/colors
# install pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install bundles
cd ~/.vim/bundle
git clone https://github.com/vim-scripts/auto-pairs-gentle
git clone https://github.com/shougo/deoplete.nvim
git clone https://github.com/mattn/emmet-vim
git clone https://github.com/ihacklog/hicursorwords
git clone https://github.com/othree/html5.vim
git clone https://github.com/davidhalter/jedi-vim
git clone https://github.com/zchee/deoplete-jedi
git clone https://github.com/gregsexton/matchtag
git clone https://github.com/shougo/neocomplete.vim
git clone https://github.com/shougo/neocomplcache.vim
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/scrooloose/nerdcommenter
git clone https://github.com/ervandew/supertab
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/palantir/tslint
git clone https://github.com/leafgarland/typescript-vim
git clone https://github.com/chrisgillis/vim-bootstrap3-snippets
git clone https://github.com/jvanja/vim-bootstrap4-snippets
git clone https://github.com/SirVer/ultisnips.git
git clone https://github.com/mutewinter/vim-css3-syntax
git clone https://github.com/isruslan/vim-es6
git clone https://github.com/scrooloose/vim-fugitive
git clone https://github.com/statianzo/vim-jade
git clone https://github.com/artur-shaik/vim-javacomplete2
git clone https://github.com/pangloss/vim-javascript
git clone https://github.com/crusoexia/vim-javascript-lib
git clone https://github.com/itspriddle/vim-javascript-indent
git clone https://github.com/terryma/vim-multiple-cursors
git clone https://github.com/mustache/vim-mustache-handlebars
git clone https://github.com/tpope/vim-sensible
git clone https://github.com/honza/vim-snippets
git clone https://github.com/anyakichi/vim-surround
git clone https://github.com/ajh17/vimcompletesme
git clone https://github.com/vimoutliner/vimoutliner
git clone https://github.com/tomtom/vimtlib

# vimrc
echo '
" Cool vim stuff and bug fixes
set nocompatible

" Pathogen
execute pathogen#infect()

syntax on

" Import language indentation
" i.e. indent after function in python
filetype plugin indent on

" Set tab to 2 spaces
" Also removes tab character
set tabstop=2
set shiftwidth=2
set expandtab

" Set mouse
set mouse=a
" Set line numbers
set number
" line number color
hi LineNr ctermfg=darkgrey

" Other remappings
no j n
no J N
no - $
no _ ^
let mapleader=","

" Remap hjkl movement keys for Dvorak Keyboard
map h <Left>
map t <Up>
map T 8<Up>
map n <Down>
map N 8<Down>
map s <Right>


" Import Colorscheme
syntax on
colorscheme jellybeans

" auto-complete HTML
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
:set omnifunc=htmlcomplete#CompleteTags

" double press to exit insert mode
inoremap hh <ESC>

" emmet autocomplete
let g:user_emmet_leader_key="<C-e>"

" line wrapping
set breakindent showbreak=..
set linebreak

" save line folds
au BufWinLeave ?* silent! mkview
au BufWinEnter ?* silent! loadview
' >> ~/.vimrc
