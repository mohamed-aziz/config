# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/mohamed/.oh-my-zsh

ZSH_THEME="spaceship"

COMPLETION_WAITING_DOTS="true"

export ZSH_CUSTOM=/home/mohamed/zsh_custom/

plugins=(virtualenv docker pip git python virtualenvwrapper
         django web-search archlinux celery )

source $ZSH/oh-my-zsh.sh

export WORKON_HOME=~/vEnvs
source /usr/bin/virtualenvwrapper_lazy.sh
export PROJECT_HOME=~/Projects

export PATH=$PATH:~/.local/bin:/home/mohamed/.gem/ruby/2.3.0/bin
export TERM="xterm-256color"

function study() {xdg-open http://localhost/myfiles/revision.html &}
# source /home/mohamed/vEnvs/devslack/bin/activate.sh

# neofetch --image ~/devslack_1.png --size 300

# the fuck ?
eval "$(thefuck --alias)"

export XDG_RUNTIME_DIR=/run/user/`id -u`

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# gotta go fast on Wikipedia.
alias wd='wikidict'

PATH="/home/mohamed/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/mohamed/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/mohamed/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/mohamed/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/mohamed/perl5"; export PERL_MM_OPT;

# My school time table program stuff.
export TB_VENV_PATH="/home/mohamed/vEnvs/issatso/bin/activate_this.py"
alias t='python3.5 ~/Projects/issatso/issatso.py lstable "Prepa-A1-04" --today'
alias tt='python3.5 ~/Projects/issatso/issatso.py lstable "Prepa-A1-04" --day'

# vim is for suckers!
# alias v='nvim'
# alias vi='nvim'
# alias vim='nvim'

# eval "$(pyenv init -)"

# using antigen for zsh package management ?
source /usr/share/zsh/scripts/antigen/antigen.zsh

# source /usr/share/autoenv/activate.sh
#
#

# Stallman pasta!
export interjection="
I'd just like to interject for a moment.  What you're referring to as Linux,
is in fact, GNU/Linux, or as I've recently taken to calling it, GNU plus Linux.
Linux is not an operating system unto itself, but rather another free component
of a fully functioning GNU system made useful by the GNU corelibs, shell
utilities and vital system components comprising a full OS as defined by POSIX.

Many computer users run a modified version of the GNU system every day,
without realizing it.  Through a peculiar turn of events, the version of GNU
which is widely used today is often called \"Linux\", and many of its users are
not aware that it is basically the GNU system, developed by the GNU Project.

There really is a Linux, and these people are using it, but it is just a
part of the system they use.  Linux is the kernel: the program in the system
that allocates the machine's resources to the other programs that you run.
The kernel is an essential part of an operating system, but useless by itself;
it can only function in the context of a complete operating system.  Linux is
normally used in combination with the GNU operating system: the whole system
is basically GNU with Linux added, or GNU/Linux.  All the so-called \"Linux\"
distributions are really distributions of GNU/Linux."


alias e='emacsclient -t'
alias ec='emacsclient -c'
alias vim='e'
alias v='e'
alias vi='e'
alias nvim='e'

export EDITOR='emacsclient -t'
