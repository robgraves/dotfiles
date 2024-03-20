# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="agnoster"
ZSH_THEME="gnzh"
#ZSH_THEME="candy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/home/robgraves/downloads/CEdev/CEdev/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/scripts/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#@show battery on zsh start req: figlet acpi
#figlet `acpi | cut -d " " -f 4 | cut -d "," -f 1`

alias server='ssh robgraves@www.spoonbomb.com -p 9999'
#alias desktop='ssh robgraves@67.252.67.153 -p 9969'
#alias lab46='ssh mp010784@lab46.corning-cc.edu'
#alias moshlab46='mosh mp010784@lab46.corning-cc.edu'
alias moshserver='mosh --ssh="ssh -p 9999" robgraves@www.spoonbomb.com'
#alias desktop='ssh robgraves@74.67.64.6 -p 9969'
#alias desktop='ssh robgraves@69.207.197.55 -p 9969'
#alias desktop='ssh robgraves@24.94.44.90 -p 9969'
#alias desktop='ssh robgraves@66.24.17.105 -p 9969'
#alias desktop='ssh robgraves@66.24.6.131 -p 9969'
alias desktop='ssh robgraves@66.24.10.48 -p 9969'
alias cistclub='ssh admin@cistclub.com -p 9559'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
alias meatwad='ssh admin@198.46.142.13 -p 9559'
alias moshmeatwad='mosh --ssh="ssh -p 9559" admin@198.46.142.13'
alias mastershake='ssh admin@108.174.60.186 -p 9559'
alias moshmastershake='mosh --ssh="ssh -p 9559" admin@108.174.60.186'
alias frylock='echo "No frylock exists yet"'
alias moshfrylock='echo "No frylock exists yet"'

alias tunnellab46='ssh -g L 8080:www:80 mp010784@lab46.corning-cc.edu'

alias dadscomputer="ssh jim@67.241.228.213"

alias uplink="/home/robgraves/downloads/uplink/uplink-x86/uplink.bin.x86"
alias retrocity="cd /home/robgraves/software/retrocityrampage/;./retrocityrampage"
alias organtrail="/home/robgraves/downloads/organtrail/OrganTrail/OrganTrailLinux.x86"

export EDITOR=/usr/bin/vim

#alias gogame='java -jar /home/robgraves/Downloads/cgoban.jar'
alias gogame='quarry'

alias battery='acpi | cut -f 3 -d " " | cut -f 1 -d "," &&  acpi | cut -f 4 -d " " | cut -f 1 -d ","'


alias lab46='ssh mp010784@lab46.g7n.org'
alias moshlab46='mosh mp010784@lab46.g7n.org'
#IP Address of New Lab 46 34.193.136.5
# lab46.g7n.org
#
#archey

clear
alias fastermirrors="rate-mirrors --allow-root --protocol https arch | sudo tee /etc/pacman.d/mirrorlist"
alias doom1="chocolate-doom -iwad ~/software/doom/Doom1.WAD"
alias doom2="chocolate-doom -iwad ~/software/doom/Doom2.wad"
alias rebooting="sudo reboot"
alias shutdowning="sudo shutdown -h now"

alias surffetch="fastfetch -l Calculate --color yellow --logo-color-1 white --logo-color-2 yellow --colors-block-width 0"
alias archfetch="fastfetch -l arch2 --color blue --logo-color-1 blue --logo-color-2 blue --colors-block-width 0"
alias tuxfetch="fastfetch -l linux --color black --logo-color-1 white --logo-color-2 black --colors-block-width 0"
#archfetch

#eval "$(starship init zsh)"
