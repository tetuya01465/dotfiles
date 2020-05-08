if [ -f ~/.zshrc ]; then
    . ~/.zshrc
fi

# default
#export LSCOLORS=exfxcxdxbxegedabagacad

export PATH=$HOME/.nodebrew/current/bin:$PATH
export LSCOLORS=cxgxcxdxhbegedabagacad

export GOPATH=$HOME/work
export GOROOT="$(brew --prefix golang)/libexec"
export PATH=$PATH:$HOME/work/bin
export GO111MODULE=on

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
