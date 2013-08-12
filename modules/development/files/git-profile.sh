source /usr/share/git-core/contrib/completion/git-prompt.sh

export PS1='[\u@\h \W$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true
