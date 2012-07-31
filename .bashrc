#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'


#PS1='[\u@\h \W]\$ '  ## default prompt

PS1='\[\033[01;39m\]\u@\h \[\033[01;34m\]\W \$ \[\033[00m\]' ## bolded one with some color


#archey

figlet robgraves
