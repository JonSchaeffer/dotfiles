export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


source ~/.git-completion.bash
source ~/.git-prompt.sh

#MAGENTA="\[\033[0;35m\]"
#YELLOW="\[\033[0;33m\]"
#BLUE="\[\033[34m\]"
#LIGHT_GRAY="\[\033[0;37m\]"
#CYAN="\[\033[0;36m\]"
#GREEN="\[\033[0;32m\]"
#GIT_PS1_SHOWDIRTYSTATE=true
#export LS_OPTIONS='--color=auto'
#export CLICOLOR='Yes'
#export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD


#export PS1=$LIGHT_GRAY"\u@\h"'$(
#    if [[ $(__git_ps1) =~ \*\)$ ]]
#    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
#    elif [[ $(__git_ps1) =~ \+\)$ ]]
#    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
#    else echo "'$CYAN'"$(__git_ps1 " (%s)")
#    fi)'$BLUE" \w"$GREEN": "

alias ll='ls -lah'
alias gg='git status -s'
