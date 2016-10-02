# terminal niceties
purple=$(tput setaf 5)
reset=$(tput sgr 0)
echo "Greetings, Your Majesty"
export PS1='[ \[$purple\]\u \w\[$reset\] ]\$ '

# Terminal colorscheme
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

PROMPT_DIRTRIM=2 # for bash v4.0+

# login to portfolio droplet
alias droplet="ssh eddie@45.55.164.120"
