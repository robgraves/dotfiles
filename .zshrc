# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="candy"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

export EDITOR=/usr/bin/vim

alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias server='ssh robgraves@69.205.140.68 -p 9999'
alias desktop='ssh robgraves@69.205.140.68 -p 9969'
alias python='python3'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
unset GNOME_KEYRING_CONTROL

export PERL_LOCAL_LIB_ROOT="/home/robgraves/perl5";
export PERL_MB_OPT="--install_base /home/robgraves/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/robgraves/perl5";
export PERL5LIB="/home/robgraves/perl5/lib/perl5/x86_64-linux-gnu-thread-multi:/home/robgraves/perl5/lib/perl5";
export PATH="/home/robgraves/perl5/bin:$PATH";
alias shutdown='sudo shutdown -h now'
alias reboot='sudo reboot'

alias proxy='ssh -D 8080 robgraves@www.spoonbomb.com -p 9969'
alias ipaddress='curl ipecho.net/plain ; echo'
