#!/bin/sh
# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
if [[ $OSTYPE == 'darwin'* ]]; then
  brew install vim
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
elif [[ $OSTYPE == 'linux-gnu' ]]; then
  sudo apt-get install curl vim
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# change dir to vim bundle
cd ~/.vim/bundle/

# install bundles
gitvim() {
  git clone -q https://github.com/vim-scripts/auto-pairs-gentle
  git clone -q https://github.com/shougo/deoplete.nvim
  git clone -q https://github.com/mattn/emmet-vim
  git clone -q https://github.com/ihacklog/hicursorwords
  git clone -q https://github.com/othree/html5.vim
  git clone -q https://github.com/davidhalter/jedi-vim
  git clone -q https://github.com/zchee/deoplete-jedi
  git clone -q https://github.com/gregsexton/matchtag
  git clone -q https://github.com/shougo/neocomplete.vim
  git clone -q https://github.com/shougo/neocomplcache.vim
  git clone -q https://github.com/scrooloose/nerdtree
  git clone -q https://github.com/scrooloose/nerdcommenter
  git clone -q https://github.com/ervandew/supertab
  git clone -q https://github.com/scrooloose/syntastic
  git clone -q https://github.com/palantir/tslint
  git clone -q https://github.com/leafgarland/typescript-vim
  git clone -q https://github.com/chrisgillis/vim-bootstrap3-snippets
  git clone -q https://github.com/jvanja/vim-bootstrap4-snippets
  git clone -q https://github.com/SirVer/ultisnips.git
  git clone -q https://github.com/mutewinter/vim-css3-syntax
  git clone -q https://github.com/isruslan/vim-es6
  git clone -q https://github.com/scrooloose/vim-fugitive
  git clone -q https://github.com/statianzo/vim-jade
  git clone -q https://github.com/artur-shaik/vim-javacomplete2
  git clone -q https://github.com/pangloss/vim-javascript
  git clone -q https://github.com/crusoexia/vim-javascript-lib
  git clone -q https://github.com/itspriddle/vim-javascript-indent
  git clone -q https://github.com/terryma/vim-multiple-cursors
  git clone -q https://github.com/mustache/vim-mustache-handlebars
  git clone -q https://github.com/tpope/vim-sensible
  git clone -q https://github.com/honza/vim-snippets
  git clone -q https://github.com/anyakichi/vim-surround
  git clone -q https://github.com/ajh17/vimcompletesme
  git clone -q https://github.com/vimoutliner/vimoutliner
  git clone -q https://github.com/tomtom/vimtlib

}

vimrc () {
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
    let g:user_emmet_leader_key='<C-e>'

    " line wrapping
    set breakindent showbreak=..
    set linebreak
    ' > ~/.vimrc
}

# loading spinner
spinner()
{
  local pid=$1
  local delay=0.20
  local spinstr='|/-\'
  while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
      local temp=${spinstr#?}
      printf " [%c]  " "$spinstr"
      local spinstr=$temp${spinstr%"$temp"}
      sleep $delay
      printf "\b\b\b\b\b\b"
  done
  printf "    \b\b\b\b"
}

vimrc
gitvim &
spinner $!
