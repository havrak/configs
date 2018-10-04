#
# ~/.bashrc
#

stty -ixon #disable ctrl+s; ctrl+q

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>> Added by cnchi installer
BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/vim


#aliases
alias p="sudo pacman"
alias v="vim"
alias orphans="pacman -Qdt"
alias sdn="sudo shutdown now"
alias sr="sudo ranger"
alias r="ranger"
alias hd="cd ~"
alias c="clear"

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
