#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -Al --color=auto'

alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

PS1='\W > '


export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
