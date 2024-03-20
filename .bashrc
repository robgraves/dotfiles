#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'


#PS1='[\u@\h \W]\$ '  ## default prompt

PS1='\[\033[01;39m\]\u@\h \[\033[01;34m\]\W \$ \[\033[00m\]' ## bolded one with some color


#archey

#figlet robgraves

##bash starts with current battery percentage req:figlet acpi
#figlet `acpi | cut -d " " -f 4 | cut -d "," -f 1` 

#alias ssh='TERM=xterm ssh'
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
alias moshcistclub='mosh --ssh="ssh -p 9559" admin@cistclub.com'

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH="$PATH:$HOME/.rvm/bin:$HOME/scripts/bin" # Add RVM to PATH for scripting
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


alias battery='acpi | cut -f 3 -d " " | cut -f 1 -d "," &&  acpi | cut -f 4 -d " " | cut -f 1 -d ","'


export EDITOR=/usr/bin/vim

#alias gogame='java -jar /home/robgraves/Downloads/cgoban.jar'
alias gogame='quarry'
#curl -s -L http://bit.ly/10hA8iC | bash  ##RICKROLL

alias lab46='ssh mp010784@lab46.g7n.org'
alias moshlab46='mosh mp010784@lab46.g7n.org'
#IP Address of New Lab 46 34.193.136.5
# lab46.g7n.org

export PATH=/home/robgraves/downloads/CEdev/CEdev/bin:$PATH

#archey

clear
alias fastermirrors="rate-mirrors --allow-root --protocol https arch | sudo tee /etc/pacman.d/mirrorlist"
alias doom1="chocolate-doom -iwad ~/software/doom/Doom1.WAD"
alias doom2="chocolate-doom -iwad ~/software/doom/Doom2.wad"
alias rebooting="sudo reboot"
alias shutdowning="sudo shutdown -h now"

alias fastfetch="fastfetch -l arch2 --color blue --logo-color-1 blue --logo-color-2 blue --colors-block-width 0"

#eval "$(starship init bash)"
