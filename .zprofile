if [ -f ~/.zshrc ]; then
    . ~/.zshrc
fi

# default
#export LSCOLORS=exfxcxdxbxegedabagacad

export PATH=$HOME/.nodebrew/current/bin:$PATH
export LSCOLORS=cxgxcxdxhbegedabagacad

export COMPOSE_FORCE_WINDOWS_HOST=1

export GOPATH=$HOME/work
export GOROOT="$(brew --prefix golang)/libexec"
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

