if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# default
#export LSCOLORS=exfxcxdxbxegedabagacad

export PATH=$HOME/.nodebrew/current/bin:$PATH
export LSCOLORS=cxgxcxdxhbegedabagacad

export HISTIGNORE='history:pwd:ls:ls *:ll'
export PROMPT_COMMAND="history -a; history -r; $PROMPT_COMMAND"

