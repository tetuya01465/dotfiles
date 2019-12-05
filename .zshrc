#export PS1='\u@\h:\W\$ '

###############
# alias
###############
alias ls='ls -FAG'
alias ll='ls -l'
alias la='ls -la'

#########
# Bash-Completion
#########
#if [ -f `brew --prefix`/etc/bash_completion ]; then
#  . `brew --prefix`/etc/bash_completion
#fi

##########
# Git-Completion
##########
#source ~/.bash/git-completion.bash

fpath=(~/.zsh/completion $fpath)
autoload -U compinit
compinit -u

#if type __git_ps1 > /dev/null 2>&1 ; then
#  PROMPT_COMMAND="__git_ps1 '\u@\h:\W' '\\\$ '; $PROMPT_COMMAND"
#  GIT_PS1_SHOWDIRTYSTATE=true
#  GIT_PS1_SHOWSTASHSTATE=true
#  GIT_PS1_SHOWUNTRACKEDFILES=true
#  GIT_PS1_SHOWUPSTREAM="auto"
#  GIT_PS1_SHOWCOLORHINTS=true
#fi


alias s='ssh $(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'


##########
# peco-src
# ghq list -p -> peco -> cd
##########
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

export QT_HOMEBREW=true
