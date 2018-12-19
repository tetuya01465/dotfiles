
###############
# alias
###############
alias ls='ls -FAG'
alias ll='ls -l'
alias la='ls -A'

#########
# Bash-Completion
#########
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

##########
# Git-Completion
##########
source ~/.bash/git-completion.bash
PS1='\u@\h:\W`~/.bash/gitbranch.bash` \$ '

export GOPATH="/Users/kita/go"

#export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages

export PATH="$HOME/.pyenv/shims:$PATH"
export MONGODB_URI=mongodb://localhost
