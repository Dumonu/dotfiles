#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=$PATH:/home/dumonu/.bin

alias ls='ls --color=auto'

# PS1='
# (BOLD)(BRIGHT BLUE)[(PWD)]
# (BRIGHT GREEN)[(USER)@(HOST)](BRIGHT BLUE) $(CLEAR FORMAT) '
PS1='\n\[\033[1m\033[00;94m\][\w]\n\[\033[00;92m\][\u@\h]\[\033[00;94m\] $\[\033[0m\] '

eval $(thefuck --alias)

alias ll="ls -alF"
#alias fixdesktop="rm -R ~/.cache/sessions/*"
#alias nuke="kill -9 $(ps -alU $(whoami) | tail -$(($(ps -alU $(whoami) | wc -l) - 1)) | awk 'BEGIN{FS=" "} {print $4}')"

alias sudo="sudo "
alias view="vim -R"
alias alarmpi="ssh -i ~/.ssh/alarmpi -p 57073"
#alias git-top="git rev-parse --show-toplevel"
alias xyzzy="echo Nothing happens"

alias fixkeys="pacman -Sy archlinux-keyring"

if ! pgrep -x "ssh-agent" > /dev/null
then
    eval "$(ssh-agent -s)"
fi
