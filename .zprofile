if [ -f ~/.zshrc ]; then
    . ~/.zshrc
fi

# default
#export LSCOLORS=exfxcxdxbxegedabagacad

export PATH=$HOME/.nodebrew/current/bin:$PATH
export LSCOLORS=cxgxcxdxhbegedabagacad

export HISTFILESIZE=100000
export HISTIGNORE='history:pwd:ls:ls *:ll'
export PROMPT_COMMAND="history -a; history -r; $PROMPT_COMMAND"

export GOPATH=$HOME/work
export GOROOT="$(brew --prefix golang)/libexec"
export PATH=$PATH:$HOME/work/bin
export GO111MODULE=on

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

