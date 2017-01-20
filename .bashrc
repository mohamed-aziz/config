#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export WORKON_HOME=~/vEnvs
export PS1="\n\e[4m[\A]\e[0m \e[32m\u\e[0m@\h \\$ \w \n> \[$(tput sgr0)\]"
source /usr/bin/virtualenvwrapper.sh
export PROJECT_HOME=~/Projects


export PATH=$PATH:~/.local/bin
