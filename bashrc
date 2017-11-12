export PS1="\nᏜ \w இ King Edward\n∷» "
export PS2="| => "

. "$HOME/.aliases"


PROMPT_DIRTRIM=2
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR=/usr/bin/vim

# PATH #
export PATH=$PATH:/Users/KingEdward/.fzf/bin
export PATH=$PATH:/usr/local/bin/jsctags
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
