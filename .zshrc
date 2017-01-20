export ZSH=/home/mohamed/.oh-my-zsh

ZSH_THEME="lambda"

COMPLETION_WAITING_DOTS="true"

export ZSH_CUSTOM=/home/mohamed/zsh_custom/

plugins=(docker pip git python django web-search archlinux celery)

source $ZSH/oh-my-zsh.sh

export WORKON_HOME=~/vEnvs
source /usr/bin/virtualenvwrapper.sh
export PROJECT_HOME=~/Projects

export PATH=$PATH:~/.local/bin:/home/mohamed/.gem/ruby/2.3.0/bin
export TERM="xterm-256color"


neofetch --image ~/devslack_1.png --size 200

eval "$(thefuck --alias)"

export XDG_RUNTIME_DIR=/run/user/`id -u`

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

alias wd='wikidict'

PATH="/home/mohamed/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/mohamed/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/mohamed/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/mohamed/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/mohamed/perl5"; export PERL_MM_OPT;
