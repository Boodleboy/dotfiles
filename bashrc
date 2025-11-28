# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias xqr='xbps-query -Rs'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias sudo='sudo '
PS1='\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\h\[`tput sgr0`\]:\w\$ '
#default arch prompt
#PS1='[\u@\h \W]\$ '

# vim mode
set editing-mode vi
set -o vi
set show-mode-in-prompt on

# add home/bin to path
export PATH=$PATH:/home/jacob/bin

# set vim as default editor
EDITOR=nvim
PAGER=less

# less syntax highlighting
# export LESSOPEN="|/usr/bin/src-hilite-lesspipe.sh %s"

# less options
export LESS=' --mouse -I -R -F -S -X'
