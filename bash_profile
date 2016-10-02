# colors
purple=$(tput setaf 5)
reset=$(tput sgr 0)
# greeting
echo "Greetings, Your Majesty"
# set leading directory
export PS1='[ \[$purple\]\u \w\[$reset\] ]\$ '
# trim directory
PROMPT_DIRTRIM=2
# list all
alias la="ls -a"
# up directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
# login sudo user
alias su="sudo -i"
# remove directory
alias rmd="rm -rf"
# clear screen
alias cls="clear"
# Terminal colorscheme
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#thefuck
eval "$(thefuck --alias)"
#neovim
alias vim="nvim"
